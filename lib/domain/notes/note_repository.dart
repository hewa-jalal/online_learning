import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'note.dart';
import 'note_failure.dart';

abstract class NoteRepository {
  // watch notes
  // watch uncompleted notes

  // both above are Read operations

  // CUD

  // this can return a list to be displayed in the UI so we have KtList<Note> as the right side
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();

  // doesn't have any return so we use Unit in case it's successful
  // but it can fail(ex: creating empty note) so we have a NoteFailure on the left side
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
