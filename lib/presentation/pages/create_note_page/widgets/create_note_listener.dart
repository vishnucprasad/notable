import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/create_note_body.dart';
import 'package:notable/presentation/router/app_router.dart';

class CreateNoteListener extends StatelessWidget {
  const CreateNoteListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) =>
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (f) {
              FlushbarHelper.createError(
                message: f.map(
                  permissionDenied: (_) => 'Access denied!',
                  unexpected: (_) => 'An unexpected error occurred',
                  unableToUpdate: (_) => 'Unable to update note',
                  unableToDelete: (_) => 'Unable to delete note',
                ),
              ).show(context);
            },
            (_) => context.replaceRoute(const HomeRoute()),
          ),
        );
      },
      child: const CreateNoteBody(),
    );
  }
}
