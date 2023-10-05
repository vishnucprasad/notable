part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState({
    required bool isLoading,
    required bool isSubmitting,
    required bool showError,
    required List<DateTime> dateList,
    required int selectedDateIndex,
    required Option<Either<NotesFailure, dynamic>> failureOrSuccessOption,
  }) = _NotesState;

  factory NotesState.initial() {
    return NotesState(
      isLoading: false,
      isSubmitting: false,
      showError: false,
      dateList: List.empty(),
      selectedDateIndex:
          DateTime.now().weekday < 7 ? DateTime.now().weekday : 0,
      failureOrSuccessOption: none(),
    );
  }
}
