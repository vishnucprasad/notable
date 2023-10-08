// ignore_for_file: invalid_annotation_target

import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notable/domain/core/value_objects.dart';
import 'package:notable/domain/notes/note.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
class NoteDto with _$NoteDto {
  const NoteDto._();

  const factory NoteDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    required String title,
    required List document,
    required DateTime date,
    required String colorString,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _NoteDto;

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id.getOrCrash(),
      title: note.title.getOrCrash(),
      document: note.document.getOrCrash().toDelta().toJson(),
      date: note.date,
      colorString: note.colorString,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Note toDomain() {
    return Note(
      id: UniqueId.fromUniqueString(id),
      title: NoteTitle(title),
      document: NoteDocument(Document.fromJson(document)),
      date: date,
      colorString: colorString,
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);

  factory NoteDto.fromFireStore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      NoteDto.fromJson(doc.data() as Map<String, dynamic>).copyWith(id: doc.id);
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
