import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notable/domain/core/constants.dart';
import 'package:notable/domain/notes/i_notes_repository.dart';
import 'package:notable/domain/notes/notes_failure.dart';

part 'notes_event.dart';
part 'notes_state.dart';
part 'notes_bloc.freezed.dart';

@injectable
class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final INotesRepository _notesRepository;
  NotesBloc(this._notesRepository) : super(NotesState.initial()) {
    on<NotesEvent>((event, emit) async {
      await event.map(
        getDateList: (e) async {
          final dateOption = await _notesRepository.getDateList(
            week: e.week,
            date: e.date,
          );

          if (dateOption.isNone()) {
            return emit(state.copyWith(
              showError: true,
              failureOrSuccessOption: some(left(
                const NotesFailure.clientFailure('Could not get the dateList'),
              )),
            ));
          }

          emit(state.copyWith(
            showError: false,
            dateList: dateOption.getOrElse(() => []),
            failureOrSuccessOption: some(right(
              dateOption.getOrElse(() => []),
            )),
          ));
        },
        changeSelectedDateIndex: (e) async => emit(state.copyWith(
          selectedDateIndex: e.index,
        )),
      );
    });
  }
}
