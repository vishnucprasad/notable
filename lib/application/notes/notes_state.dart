part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState({
    required bool isLoading,
    required bool isSubmitting,
    required bool showError,
    required List<DateTime> dateList,
    required Option<Either<NotesFailure, dynamic>> failureOrSuccessOption,
  }) = _NotesState;

  factory NotesState.initial() {
    return NotesState(
      isLoading: false,
      isSubmitting: false,
      showError: false,
      dateList: List.empty(),
      failureOrSuccessOption: none(),
    );
  }
}
