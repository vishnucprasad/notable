part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.getDateList({
    required Week week,
    required DateTime date,
  }) = _GetDateList;
}
