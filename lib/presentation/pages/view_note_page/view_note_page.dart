import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:notable/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';
import 'package:notable/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:notable/domain/core/value_objects.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/extensions/dialog_extension.dart';
import 'package:notable/presentation/pages/view_note_page/widgets/view_note_body.dart';
import 'package:notable/presentation/router/app_router.dart';

@RoutePage()
class ViewNotePage extends StatelessWidget {
  const ViewNotePage({
    super.key,
    required this.noteId,
  });

  final UniqueId noteId;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) {
            final note = state.notes.find(
              (note) => note.id == noteId,
            );
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: RichText(
                  text: TextSpan(
                    text: 'Note',
                    style: TextStyle(
                      fontSize: 20,
                      color: isDarkMode ? kLightColor : kDarkColor,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      context
                          .read<NoteFormBloc>()
                          .add(NoteFormEvent.initialized(some(
                            note ?? Note.empty(),
                          )));
                      context.pushRoute(const CreateNoteRoute());
                    },
                    icon: const Icon(Icons.edit_note),
                  ),
                  IconButton(
                    onPressed: () async {
                      final confirmed = await context.showConfirmationDialog(
                        title: 'Are you sure you want to delete this note ?',
                        icon: Icons.delete,
                      );

                      if (confirmed == true && note != null) {
                        // ignore: use_build_context_synchronously
                        context
                            .read<NoteActorBloc>()
                            .add(NoteActorEvent.deleted(note));
                      }
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
                backgroundColor: isDarkMode ? kDarkColor : kLightColor,
                foregroundColor: isDarkMode ? kLightColor : kDarkColor,
              ),
              body: BlocConsumer<NoteActorBloc, NoteActorState>(
                listener: (context, state) {
                  state.maybeMap(
                    deleteFailure: (_) => FlushbarHelper.createError(
                      message: 'Failed to delete note',
                    ).show(context),
                    deleteSuccess: (_) => context.popRoute(),
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                    actionInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    orElse: () {
                      return SafeArea(
                        child: SingleChildScrollView(
                          child: ViewNoteBody(note: note),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
          orElse: () => const Center(
            child: Text('Something went wrong'),
          ),
        );
      },
    );
  }
}
