import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:notable/domain/core/constants.dart';
import 'package:notable/domain/notes/i_notes_repository.dart';

@LazySingleton(as: INotesRepository)
class NotesRepository implements INotesRepository {
  @override
  Future<Option<List<DateTime>>> getDateList({
    required Week week,
    required DateTime date,
  }) async {
    final startOfDate = DateTime(date.year, date.month, date.day);

    final sunday = startOfDate.subtract(Duration(
      days: startOfDate.weekday < 7 ? startOfDate.weekday : 0,
    ));

    final startFrom = week == Week.next
        ? sunday.add(const Duration(days: 7))
        : week == Week.previous
            ? sunday.subtract(const Duration(days: 7))
            : sunday;

    final dateList = List.generate(7, (index) {
      if (index == 6) {
        return startFrom
            .add(Duration(days: index + 1))
            .subtract(const Duration(seconds: 1));
      }

      return startFrom.add(Duration(days: index));
    });

    return dateList.isEmpty ? none() : some(dateList);
  }
}
