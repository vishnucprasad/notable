import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notable/domain/core/value_objects.dart';
import 'package:notable/domain/notes/i_notes_repository.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/domain/notes/notes_failure.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INotesRepository _notesRepository;
  NoteFormBloc(this._notesRepository) : super(NoteFormState.initial()) {
    on<NoteFormEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          emit(e.initialNoteOption.fold(
            () => state,
            (initialNote) => state.copyWith(
              note: initialNote,
              isEditing: true,
            ),
          ));
        },
        titleChanged: (e) async {
          emit(state.copyWith(
            note: state.note.copyWith(title: NoteTitle(e.title)),
            failureOrSuccessOption: none(),
          ));
        },
        documentChanged: (e) async {
          emit(state.copyWith(
            note: state.note.copyWith(document: NoteDocument(e.document)),
            failureOrSuccessOption: none(),
          ));
        },
        dateChanged: (e) async {
          emit(state.copyWith(
            note: state.note.copyWith(date: e.date),
            failureOrSuccessOption: none(),
          ));
        },
        colorStringChanged: (e) async {
          emit(state.copyWith(
            note: state.note.copyWith(colorString: e.colorString),
            failureOrSuccessOption: none(),
          ));
        },
        saved: (_) async {
          Either<NotesFailure, Unit>? failureOrSuccess;

          emit(state.copyWith(
            isSaving: true,
            failureOrSuccessOption: none(),
          ));

          if (state.note.failureOption.isNone()) {
            failureOrSuccess = state.isEditing
                ? await _notesRepository.update(state.note)
                : await _notesRepository.create(state.note);
          }

          emit(state.copyWith(
            isSaving: false,
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
