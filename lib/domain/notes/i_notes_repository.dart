import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/domain/notes/notes_failure.dart';

abstract class INotesRepository {
  Stream<Either<NotesFailure, KtList<Note>>> watchAll();
  Future<Either<NotesFailure, Unit>> create(Note note);
  Future<Either<NotesFailure, Unit>> update(Note note);
  Future<Either<NotesFailure, Unit>> delete(Note note);
}
