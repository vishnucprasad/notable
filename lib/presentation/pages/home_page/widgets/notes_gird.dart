import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notable/presentation/pages/home_page/widgets/notes_grid_item.dart';
import 'package:notable/presentation/pages/home_page/widgets/temp.dart';

class NotesGird extends StatelessWidget {
  const NotesGird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: List.generate(
              noteList.length,
              (index) => NotesGridItem(
                note: noteList[index],
                color: Colors.accents[index % Colors.accents.length],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
