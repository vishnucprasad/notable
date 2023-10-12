import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/note_input_error.dart';

class NoteInputField extends StatelessWidget {
  const NoteInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = QuillController(
      document: Document.fromDelta(context
          .read<NoteFormBloc>()
          .state
          .note
          .document
          .value
          .getOrElse(() => Document())
          .toDelta()),
      selection: const TextSelection.collapsed(offset: 0),
    );

    controller.document.changes.listen((event) {
      context
          .read<NoteFormBloc>()
          .add(NoteFormEvent.documentChanged(controller.document));
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: QuillEditor.basic(
            controller: controller,
            readOnly: false,
            autoFocus: false,
            placeholder: 'Type here...',
            padding: const EdgeInsets.all(14),
          ),
        ),
        const NoteInputError(),
        QuillToolbar.basic(
          controller: controller,
          showBackgroundColorButton: false,
          showSearchButton: false,
          showSubscript: false,
          showSuperscript: false,
          showListCheck: false,
          showColorButton: false,
        ),
      ],
    );
  }
}
