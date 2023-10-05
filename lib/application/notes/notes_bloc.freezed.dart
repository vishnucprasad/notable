// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Week week, DateTime date) getDateList,
    required TResult Function(int index) changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Week week, DateTime date)? getDateList,
    TResult? Function(int index)? changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Week week, DateTime date)? getDateList,
    TResult Function(int index)? changeSelectedDateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDateList value) getDateList,
    required TResult Function(_ChangeSelectedDateIndex value)
        changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDateList value)? getDateList,
    TResult? Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDateList value)? getDateList,
    TResult Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res, NotesEvent>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res, $Val extends NotesEvent>
    implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDateListImplCopyWith<$Res> {
  factory _$$GetDateListImplCopyWith(
          _$GetDateListImpl value, $Res Function(_$GetDateListImpl) then) =
      __$$GetDateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Week week, DateTime date});
}

/// @nodoc
class __$$GetDateListImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$GetDateListImpl>
    implements _$$GetDateListImplCopyWith<$Res> {
  __$$GetDateListImplCopyWithImpl(
      _$GetDateListImpl _value, $Res Function(_$GetDateListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? date = null,
  }) {
    return _then(_$GetDateListImpl(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetDateListImpl implements _GetDateList {
  const _$GetDateListImpl({required this.week, required this.date});

  @override
  final Week week;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'NotesEvent.getDateList(week: $week, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDateListImpl &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, week, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDateListImplCopyWith<_$GetDateListImpl> get copyWith =>
      __$$GetDateListImplCopyWithImpl<_$GetDateListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Week week, DateTime date) getDateList,
    required TResult Function(int index) changeSelectedDateIndex,
  }) {
    return getDateList(week, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Week week, DateTime date)? getDateList,
    TResult? Function(int index)? changeSelectedDateIndex,
  }) {
    return getDateList?.call(week, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Week week, DateTime date)? getDateList,
    TResult Function(int index)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (getDateList != null) {
      return getDateList(week, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDateList value) getDateList,
    required TResult Function(_ChangeSelectedDateIndex value)
        changeSelectedDateIndex,
  }) {
    return getDateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDateList value)? getDateList,
    TResult? Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
  }) {
    return getDateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDateList value)? getDateList,
    TResult Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (getDateList != null) {
      return getDateList(this);
    }
    return orElse();
  }
}

abstract class _GetDateList implements NotesEvent {
  const factory _GetDateList(
      {required final Week week,
      required final DateTime date}) = _$GetDateListImpl;

  Week get week;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$GetDateListImplCopyWith<_$GetDateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSelectedDateIndexImplCopyWith<$Res> {
  factory _$$ChangeSelectedDateIndexImplCopyWith(
          _$ChangeSelectedDateIndexImpl value,
          $Res Function(_$ChangeSelectedDateIndexImpl) then) =
      __$$ChangeSelectedDateIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeSelectedDateIndexImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$ChangeSelectedDateIndexImpl>
    implements _$$ChangeSelectedDateIndexImplCopyWith<$Res> {
  __$$ChangeSelectedDateIndexImplCopyWithImpl(
      _$ChangeSelectedDateIndexImpl _value,
      $Res Function(_$ChangeSelectedDateIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeSelectedDateIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedDateIndexImpl implements _ChangeSelectedDateIndex {
  const _$ChangeSelectedDateIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'NotesEvent.changeSelectedDateIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedDateIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedDateIndexImplCopyWith<_$ChangeSelectedDateIndexImpl>
      get copyWith => __$$ChangeSelectedDateIndexImplCopyWithImpl<
          _$ChangeSelectedDateIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Week week, DateTime date) getDateList,
    required TResult Function(int index) changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Week week, DateTime date)? getDateList,
    TResult? Function(int index)? changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Week week, DateTime date)? getDateList,
    TResult Function(int index)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedDateIndex != null) {
      return changeSelectedDateIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDateList value) getDateList,
    required TResult Function(_ChangeSelectedDateIndex value)
        changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDateList value)? getDateList,
    TResult? Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDateList value)? getDateList,
    TResult Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedDateIndex != null) {
      return changeSelectedDateIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedDateIndex implements NotesEvent {
  const factory _ChangeSelectedDateIndex(final int index) =
      _$ChangeSelectedDateIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeSelectedDateIndexImplCopyWith<_$ChangeSelectedDateIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  List<DateTime> get dateList => throw _privateConstructorUsedError;
  int get selectedDateIndex => throw _privateConstructorUsedError;
  Option<Either<NotesFailure, dynamic>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesStateCopyWith<NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSubmitting,
      bool showError,
      List<DateTime> dateList,
      int selectedDateIndex,
      Option<Either<NotesFailure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? showError = null,
    Object? dateList = null,
    Object? selectedDateIndex = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotesFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesStateImplCopyWith<$Res>
    implements $NotesStateCopyWith<$Res> {
  factory _$$NotesStateImplCopyWith(
          _$NotesStateImpl value, $Res Function(_$NotesStateImpl) then) =
      __$$NotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSubmitting,
      bool showError,
      List<DateTime> dateList,
      int selectedDateIndex,
      Option<Either<NotesFailure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class __$$NotesStateImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$NotesStateImpl>
    implements _$$NotesStateImplCopyWith<$Res> {
  __$$NotesStateImplCopyWithImpl(
      _$NotesStateImpl _value, $Res Function(_$NotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? showError = null,
    Object? dateList = null,
    Object? selectedDateIndex = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$NotesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      dateList: null == dateList
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotesFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$NotesStateImpl implements _NotesState {
  const _$NotesStateImpl(
      {required this.isLoading,
      required this.isSubmitting,
      required this.showError,
      required final List<DateTime> dateList,
      required this.selectedDateIndex,
      required this.failureOrSuccessOption})
      : _dateList = dateList;

  @override
  final bool isLoading;
  @override
  final bool isSubmitting;
  @override
  final bool showError;
  final List<DateTime> _dateList;
  @override
  List<DateTime> get dateList {
    if (_dateList is EqualUnmodifiableListView) return _dateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateList);
  }

  @override
  final int selectedDateIndex;
  @override
  final Option<Either<NotesFailure, dynamic>> failureOrSuccessOption;

  @override
  String toString() {
    return 'NotesState(isLoading: $isLoading, isSubmitting: $isSubmitting, showError: $showError, dateList: $dateList, selectedDateIndex: $selectedDateIndex, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            const DeepCollectionEquality().equals(other._dateList, _dateList) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isSubmitting,
      showError,
      const DeepCollectionEquality().hash(_dateList),
      selectedDateIndex,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesStateImplCopyWith<_$NotesStateImpl> get copyWith =>
      __$$NotesStateImplCopyWithImpl<_$NotesStateImpl>(this, _$identity);
}

abstract class _NotesState implements NotesState {
  const factory _NotesState(
      {required final bool isLoading,
      required final bool isSubmitting,
      required final bool showError,
      required final List<DateTime> dateList,
      required final int selectedDateIndex,
      required final Option<Either<NotesFailure, dynamic>>
          failureOrSuccessOption}) = _$NotesStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get showError;
  @override
  List<DateTime> get dateList;
  @override
  int get selectedDateIndex;
  @override
  Option<Either<NotesFailure, dynamic>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$NotesStateImplCopyWith<_$NotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}