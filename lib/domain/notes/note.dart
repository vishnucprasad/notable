import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notable/domain/core/extensions.dart';
import 'package:notable/domain/core/value_failure.dart';
import 'package:notable/domain/core/value_objects.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const Note._();

  const factory Note({
    required UniqueId id,
    required NoteTitle title,
    required NoteDocument document,
    required DateTime date,
    required String colorString,
  }) = _Note;

  factory Note.empty() {
    return Note(
      id: UniqueId(),
      title: NoteTitle(''),
      document: NoteDocument(Document()),
      date: DateTime.now(),
      colorString: Colors.transparent.toHex(),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption => title.failureOrUnit
      .andThen(document.failureOrUnit)
      .fold((f) => some(f), (r) => none());
}
