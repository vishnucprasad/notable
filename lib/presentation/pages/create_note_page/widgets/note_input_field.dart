import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class NoteInputField extends StatelessWidget {
  const NoteInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = QuillController.basic();

    return Column(
      children: [
        Expanded(
          child: QuillEditor.basic(
            controller: controller,
            readOnly: false,
            placeholder: 'Type here...',
            autoFocus: false,
            padding: const EdgeInsets.all(14),
          ),
        ),
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
