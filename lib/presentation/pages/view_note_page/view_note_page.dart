import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

@RoutePage()
class ViewNotePage extends StatelessWidget {
  const ViewNotePage({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    QuillController controller = QuillController(
      document: Document.fromDelta(note.document.getOrCrash().toDelta()),
      selection: const TextSelection.collapsed(offset: 0),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            text: 'Note',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_note),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
        backgroundColor: isDarkMode ? kDarkColor : kLightColor,
        foregroundColor: isDarkMode ? kLightColor : kDarkColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: note.title.getOrCrash(),
                  style: TextStyle(
                    color: isDarkMode ? kLightColor : kDarkColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              kHeightMedium,
              QuillEditor.basic(controller: controller, readOnly: true),
            ],
          ),
        ),
      ),
    );
  }
}
