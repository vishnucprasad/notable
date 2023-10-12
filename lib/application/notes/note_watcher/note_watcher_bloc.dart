import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:notable/domain/notes/i_notes_repository.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/domain/notes/notes_failure.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

StreamSubscription<Either<NotesFailure, KtList<Note>>>? _noteStreamSubscription;

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INotesRepository _notesRepository;
  NoteWatcherBloc(this._notesRepository)
      : super(const NoteWatcherState.initial()) {
    on<NoteWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (_) async {
          emit(const NoteWatcherState.loading());
          _noteStreamSubscription = _notesRepository.watchAll().listen(
              (failuerOrNotes) =>
                  add(NoteWatcherEvent.notesReceived(failuerOrNotes)));
        },
        notesReceived: (e) async {
          emit(e.failureOrNotes.fold(
            (f) => NoteWatcherState.loadFailure(f),
            (notes) => NoteWatcherState.loadSuccess(notes.sortedByDescending(
              (note) => note.date,
            )),
          ));
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
