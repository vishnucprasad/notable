part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required bool showValidationError,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<NotesFailure, Unit>> failureOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() {
    return NoteFormState(
      note: Note.empty(),
      showValidationError: false,
      isSaving: false,
      isEditing: false,
      failureOrSuccessOption: none(),
    );
  }
}
