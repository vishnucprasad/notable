import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_failure.freezed.dart';

@freezed
class NotesFailure with _$NotesFailure {
  const factory NotesFailure.unexpected() = _Unexpected;
  const factory NotesFailure.permissionDenied() = _PermissionDenied;
}
