import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

class NotesGridItem extends StatelessWidget {
  const NotesGridItem({
    super.key,
    required this.note,
    required this.color,
  });

  final Map<String, String> note;
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
              DateFormat.yMMMEd().format(DateTime.now()),
              style: const TextStyle(
                color: kLightGreyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: color.withAlpha(80),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note["title"]!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeightMedium,
                  Text(note["note"]!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
