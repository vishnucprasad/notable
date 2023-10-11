import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

class NotesGridItem extends StatelessWidget {
  const NotesGridItem({
    super.key,
    required this.note,
    required this.color,
  });

  final Note note;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.fit(
      crossAxisCellCount: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              DateFormat.yMMMEd().format(DateTime.now()).toUpperCase(),
              style: const TextStyle(
                color: kLightGreyColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: color.withAlpha(75),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.title.getOrCrash(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeightMedium,
                  note.document.getOrCrash().toPlainText().length < 400
                      ? Text(
                          note.document.getOrCrash().toPlainText().substring(1,
                              note.document.getOrCrash().toPlainText().length),
                        )
                      : Text(
                          '${note.document.getOrCrash().toPlainText().substring(1, 400)}...',
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
