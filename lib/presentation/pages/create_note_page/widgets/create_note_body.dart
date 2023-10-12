import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';
import 'package:notable/presentation/core/extensions/dialog_extension.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/color_picker_button.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/date_picker_button.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/note_input_field.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/title_input_field.dart';

class CreateNoteBody extends StatelessWidget {
  const CreateNoteBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return WillPopScope(
      onWillPop: () async {
        final failureOrSuccess =
            context.read<NoteFormBloc>().state.failureOrSuccessOption;
        final isRight = failureOrSuccess.fold(
          () => false,
          (a) => a.isRight(),
        );

        final value = isRight
            ? true
            : await context.showConfirmationDialog(
                title: 'Are you sure you want to exit without saving ?',
                icon: Icons.warning,
              );

        if (value == true) {
          // ignore: use_build_context_synchronously
          context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.initialized(some(Note.empty())));
          return true;
        }

        return false;
      },
      child: BlocBuilder<NoteFormBloc, NoteFormState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: const Text('Create note'),
              actions: [
                state.isSaving
                    ? const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      )
                    : IconButton(
                        onPressed: () => context
                            .read<NoteFormBloc>()
                            .add(const NoteFormEvent.saved()),
                        icon: const Icon(Icons.save),
                      ),
              ],
              backgroundColor: isDarkMode ? kDarkColor : kLightColor,
              foregroundColor: isDarkMode ? kLightColor : kDarkColor,
            ),
            body: const SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeightMedium,
                  TitleInputField(),
                  kHeightMedium,
                  Row(
                    children: [
                      DatePickerButton(),
                      ColorPickerButton(),
                    ],
                  ),
                  kHeightMedium,
                  Expanded(child: NoteInputField()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
