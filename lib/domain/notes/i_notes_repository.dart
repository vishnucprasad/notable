import 'package:dartz/dartz.dart';
import 'package:notable/domain/core/constants.dart';

abstract class INotesRepository {
  Future<Option<List<DateTime>>> getDateList({
    required Week week,
    required DateTime date,
  });
}
