import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';
import 'package:notable/presentation/router/app_router.dart';

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
      child: GestureDetector(
        onTap: () => context.pushRoute(ViewNoteRoute(note: note)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                DateFormat.yMMMEd().format(note.date).toUpperCase(),
                style: const TextStyle(
                  color: kLightGreyColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
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
                      note.document.getOrCrash().toPlainText().length < 500
                          ? Text(
                              note.document
                                  .getOrCrash()
                                  .toPlainText()
                                  .substring(
                                      0,
                                      note.document
                                          .getOrCrash()
                                          .toPlainText()
                                          .length),
                            )
                          : Text(
                              '${note.document.getOrCrash().toPlainText().substring(0, 500)}...',
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
