import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

class ViewNoteBody extends StatelessWidget {
  const ViewNoteBody({
    super.key,
    required this.note,
  });

  final Note? note;

  @override
  Widget build(BuildContext context) {
    if (note == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    QuillController controller = QuillController(
      document: Document.fromDelta(note!.document.getOrCrash().toDelta()),
      selection: const TextSelection.collapsed(offset: 0),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: note!.title.getOrCrash(),
              style: TextStyle(
                color: isDarkMode ? kLightColor : kDarkColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          kHeightMedium,
          QuillEditor.basic(controller: controller, readOnly: true),
          kHeightMedium,
        ],
      ),
    );
  }
}
