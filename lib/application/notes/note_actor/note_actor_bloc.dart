import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notable/domain/notes/i_notes_repository.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/domain/notes/notes_failure.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INotesRepository _notesRepository;
  NoteActorBloc(this._notesRepository) : super(const NoteActorState.initial()) {
    on<NoteActorEvent>((event, emit) async {
      emit(const NoteActorState.actionInProgress());
      final deleteOption = await _notesRepository.delete(event.note);
      emit(deleteOption.fold(
        (f) => NoteActorState.deleteFailure(f),
        (_) => const NoteActorState.deleteSuccess(),
      ));
    });
  }
}
