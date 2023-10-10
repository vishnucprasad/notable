// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Document document) documentChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String colorString) colorStringChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function(String title)? titleChanged,
    TResult? Function(Document document)? documentChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String colorString)? colorStringChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Document document)? documentChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String colorString)? colorStringChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DocumentChanged value) documentChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_ColorStringChanged value) colorStringChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DocumentChanged value)? documentChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_ColorStringChanged value)? colorStringChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DocumentChanged value)? documentChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_ColorStringChanged value)? colorStringChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res, NoteFormEvent>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res, $Val extends NoteFormEvent>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Note> initialNoteOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNoteOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialNoteOption
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<Note>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialNoteOption);

  @override
  final Option<Note> initialNoteOption;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                other.initialNoteOption == initialNoteOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNoteOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Document document) documentChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String colorString) colorStringChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function(String title)? titleChanged,
    TResult? Function(Document document)? documentChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String colorString)? colorStringChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Document document)? documentChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String colorString)? colorStringChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DocumentChanged value) documentChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_ColorStringChanged value) colorStringChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DocumentChanged value)? documentChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_ColorStringChanged value)? colorStringChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DocumentChanged value)? documentChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_ColorStringChanged value)? colorStringChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NoteFormEvent {
  const factory _Initialized(final Option<Note> initialNoteOption) =
      _$InitializedImpl;

  Option<Note> get initialNoteOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'NoteFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Document document) documentChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String colorString) colorStringChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function(String title)? titleChanged,
    TResult? Function(Document document)? documentChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String colorString)? colorStringChanged,
    TResult? Function()? saved,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Document document)? documentChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String colorString)? colorStringChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DocumentChanged value) documentChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_ColorStringChanged value) colorStringChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DocumentChanged value)? documentChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_ColorStringChanged value)? colorStringChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DocumentChanged value)? documentChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_ColorStringChanged value)? colorStringChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements NoteFormEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocumentChangedImplCopyWith<$Res> {
  factory _$$DocumentChangedImplCopyWith(_$DocumentChangedImpl value,
          $Res Function(_$DocumentChangedImpl) then) =
      __$$DocumentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Document document});
}

/// @nodoc
class __$$DocumentChangedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$DocumentChangedImpl>
    implements _$$DocumentChangedImplCopyWith<$Res> {
  __$$DocumentChangedImplCopyWithImpl(
      _$DocumentChangedImpl _value, $Res Function(_$DocumentChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$DocumentChangedImpl(
      null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc

class _$DocumentChangedImpl implements _DocumentChanged {
  const _$DocumentChangedImpl(this.document);

  @override
  final Document document;

  @override
  String toString() {
    return 'NoteFormEvent.documentChanged(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentChangedImpl &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentChangedImplCopyWith<_$DocumentChangedImpl> get copyWith =>
      __$$DocumentChangedImplCopyWithImpl<_$DocumentChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Document document) documentChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String colorString) colorStringChanged,
    required TResult Function() saved,
  }) {
    return documentChanged(document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function(String title)? titleChanged,
    TResult? Function(Document document)? documentChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String colorString)? colorStringChanged,
    TResult? Function()? saved,
  }) {
    return documentChanged?.call(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Document document)? documentChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String colorString)? colorStringChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (documentChanged != null) {
      return documentChanged(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DocumentChanged value) documentChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_ColorStringChanged value) colorStringChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return documentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DocumentChanged value)? documentChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_ColorStringChanged value)? colorStringChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return documentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DocumentChanged value)? documentChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_ColorStringChanged value)? colorStringChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (documentChanged != null) {
      return documentChanged(this);
    }
    return orElse();
  }
}

abstract class _DocumentChanged implements NoteFormEvent {
  const factory _DocumentChanged(final Document document) =
      _$DocumentChangedImpl;

  Document get document;
  @JsonKey(ignore: true)
  _$$DocumentChangedImplCopyWith<_$DocumentChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedImplCopyWith<$Res> {
  factory _$$DateChangedImplCopyWith(
          _$DateChangedImpl value, $Res Function(_$DateChangedImpl) then) =
      __$$DateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateChangedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$DateChangedImpl>
    implements _$$DateChangedImplCopyWith<$Res> {
  __$$DateChangedImplCopyWithImpl(
      _$DateChangedImpl _value, $Res Function(_$DateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChangedImpl implements _DateChanged {
  const _$DateChangedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'NoteFormEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      __$$DateChangedImplCopyWithImpl<_$DateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Document document) documentChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String colorString) colorStringChanged,
    required TResult Function() saved,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function(String title)? titleChanged,
    TResult? Function(Document document)? documentChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String colorString)? colorStringChanged,
    TResult? Function()? saved,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Document document)? documentChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String colorString)? colorStringChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DocumentChanged value) documentChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_ColorStringChanged value) colorStringChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DocumentChanged value)? documentChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_ColorStringChanged value)? colorStringChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DocumentChanged value)? documentChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_ColorStringChanged value)? colorStringChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements NoteFormEvent {
  const factory _DateChanged(final DateTime date) = _$DateChangedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorStringChangedImplCopyWith<$Res> {
  factory _$$ColorStringChangedImplCopyWith(_$ColorStringChangedImpl value,
          $Res Function(_$ColorStringChangedImpl) then) =
      __$$ColorStringChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String colorString});
}

/// @nodoc
class __$$ColorStringChangedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$ColorStringChangedImpl>
    implements _$$ColorStringChangedImplCopyWith<$Res> {
  __$$ColorStringChangedImplCopyWithImpl(_$ColorStringChangedImpl _value,
      $Res Function(_$ColorStringChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorString = null,
  }) {
    return _then(_$ColorStringChangedImpl(
      null == colorString
          ? _value.colorString
          : colorString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ColorStringChangedImpl implements _ColorStringChanged {
  const _$ColorStringChangedImpl(this.colorString);

  @override
  final String colorString;

  @override
  String toString() {
    return 'NoteFormEvent.colorStringChanged(colorString: $colorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorStringChangedImpl &&
            (identical(other.colorString, colorString) ||
                other.colorString == colorString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorStringChangedImplCopyWith<_$ColorStringChangedImpl> get copyWith =>
      __$$ColorStringChangedImplCopyWithImpl<_$ColorStringChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Document document) documentChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String colorString) colorStringChanged,
    required TResult Function() saved,
  }) {
    return colorStringChanged(colorString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function(String title)? titleChanged,
    TResult? Function(Document document)? documentChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String colorString)? colorStringChanged,
    TResult? Function()? saved,
  }) {
    return colorStringChanged?.call(colorString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Document document)? documentChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String colorString)? colorStringChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorStringChanged != null) {
      return colorStringChanged(colorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DocumentChanged value) documentChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_ColorStringChanged value) colorStringChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return colorStringChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DocumentChanged value)? documentChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_ColorStringChanged value)? colorStringChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return colorStringChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DocumentChanged value)? documentChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_ColorStringChanged value)? colorStringChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorStringChanged != null) {
      return colorStringChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorStringChanged implements NoteFormEvent {
  const factory _ColorStringChanged(final String colorString) =
      _$ColorStringChangedImpl;

  String get colorString;
  @JsonKey(ignore: true)
  _$$ColorStringChangedImplCopyWith<_$ColorStringChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(Document document) documentChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String colorString) colorStringChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialized,
    TResult? Function(String title)? titleChanged,
    TResult? Function(Document document)? documentChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String colorString)? colorStringChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(Document document)? documentChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String colorString)? colorStringChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DocumentChanged value) documentChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_ColorStringChanged value) colorStringChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DocumentChanged value)? documentChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_ColorStringChanged value)? colorStringChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DocumentChanged value)? documentChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_ColorStringChanged value)? colorStringChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get showValidationError => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<NotesFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res, NoteFormState>;
  @useResult
  $Res call(
      {Note note,
      bool showValidationError,
      bool isSaving,
      bool isEditing,
      Option<Either<NotesFailure, Unit>> failureOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res, $Val extends NoteFormState>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? showValidationError = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotesFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteFormStateImplCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$NoteFormStateImplCopyWith(
          _$NoteFormStateImpl value, $Res Function(_$NoteFormStateImpl) then) =
      __$$NoteFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Note note,
      bool showValidationError,
      bool isSaving,
      bool isEditing,
      Option<Either<NotesFailure, Unit>> failureOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$NoteFormStateImplCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res, _$NoteFormStateImpl>
    implements _$$NoteFormStateImplCopyWith<$Res> {
  __$$NoteFormStateImplCopyWithImpl(
      _$NoteFormStateImpl _value, $Res Function(_$NoteFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? showValidationError = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$NoteFormStateImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotesFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$NoteFormStateImpl implements _NoteFormState {
  const _$NoteFormStateImpl(
      {required this.note,
      required this.showValidationError,
      required this.isSaving,
      required this.isEditing,
      required this.failureOrSuccessOption});

  @override
  final Note note;
  @override
  final bool showValidationError;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<NotesFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showValidationError: $showValidationError, isSaving: $isSaving, isEditing: $isEditing, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFormStateImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.showValidationError, showValidationError) ||
                other.showValidationError == showValidationError) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, showValidationError,
      isSaving, isEditing, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      __$$NoteFormStateImplCopyWithImpl<_$NoteFormStateImpl>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final Note note,
      required final bool showValidationError,
      required final bool isSaving,
      required final bool isEditing,
      required final Option<Either<NotesFailure, Unit>>
          failureOrSuccessOption}) = _$NoteFormStateImpl;

  @override
  Note get note;
  @override
  bool get showValidationError;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<NotesFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
