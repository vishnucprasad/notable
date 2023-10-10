part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(
    Option<Note> initialNoteOption,
  ) = _Initialized;
  const factory NoteFormEvent.titleChanged(String title) = _TitleChanged;
  const factory NoteFormEvent.documentChanged(
    Document document,
  ) = _DocumentChanged;
  const factory NoteFormEvent.dateChanged(DateTime date) = _DateChanged;
  const factory NoteFormEvent.colorStringChanged(
    String colorString,
  ) = _ColorStringChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
