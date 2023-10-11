import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notable/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:notable/presentation/pages/home_page/widgets/notes_grid_item.dart';

class NotesGird extends StatelessWidget {
  const NotesGird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: state.map(
              initial: (state) => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: (state) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) => SingleChildScrollView(
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  children: List.generate(
                    state.notes.size,
                    (index) => NotesGridItem(
                      note: state.notes[index],
                      color: Color(
                        int.parse(
                              state.notes[index].colorString.substring(1, 7),
                              radix: 16,
                            ) +
                            0xFF000000,
                      ),
                    ),
                  ),
                ),
              ),
              loadFailure: (state) => const Center(
                child: Text('Load error'),
              ),
            ),
          ),
        );
      },
    );
  }
}
