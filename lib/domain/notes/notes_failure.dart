import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_failure.freezed.dart';

@freezed
class NotesFailure with _$NotesFailure {
  const factory NotesFailure.clientFailure(String msg) = _ClientFailure;
  const factory NotesFailure.serverFailure(String msg) = _ServerFailure;
}
