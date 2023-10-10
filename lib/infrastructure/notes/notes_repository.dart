import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:notable/domain/notes/i_notes_repository.dart';
import 'package:notable/domain/notes/note.dart';
import 'package:notable/domain/notes/notes_failure.dart';
import 'package:notable/infrastructure/core/firestore_helpers.dart';
import 'package:notable/infrastructure/notes/note_dtos.dart';
import 'package:notable/injection.dart';

@LazySingleton(as: INotesRepository)
class NotesRepository implements INotesRepository {
  final FirebaseFirestore _firestore = getIt<FirebaseFirestore>();

  @override
  Stream<Either<NotesFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.notesCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NotesFailure, KtList<Note>>(
            snapshot.docs
                .map((doc) => NoteDto.fromFireStore(
                      doc as DocumentSnapshot<Map<String, dynamic>>,
                    ).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is PlatformException &&
          e.message != null &&
          e.message!.contains('PERMISSION_DENIED')) {
        return left(const NotesFailure.permissionDenied());
      }

      return left(const NotesFailure.unexpected());
    });
  }

  @override
  Future<Either<NotesFailure, Unit>> create(Note note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<NotesFailure, Unit>> update(Note note) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<NotesFailure, Unit>> delete(Note note) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
