// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Note {
  UniqueId get id => throw _privateConstructorUsedError;
  NoteTitle get title => throw _privateConstructorUsedError;
  NoteDocument get document => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get colorString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {UniqueId id,
      NoteTitle title,
      NoteDocument document,
      DateTime date,
      String colorString});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? document = null,
    Object? date = null,
    Object? colorString = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NoteTitle,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as NoteDocument,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      colorString: null == colorString
          ? _value.colorString
          : colorString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      NoteTitle title,
      NoteDocument document,
      DateTime date,
      String colorString});
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? document = null,
    Object? date = null,
    Object? colorString = null,
  }) {
    return _then(_$NoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NoteTitle,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as NoteDocument,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      colorString: null == colorString
          ? _value.colorString
          : colorString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteImpl extends _Note {
  const _$NoteImpl(
      {required this.id,
      required this.title,
      required this.document,
      required this.date,
      required this.colorString})
      : super._();

  @override
  final UniqueId id;
  @override
  final NoteTitle title;
  @override
  final NoteDocument document;
  @override
  final DateTime date;
  @override
  final String colorString;

  @override
  String toString() {
    return 'Note(id: $id, title: $title, document: $document, date: $date, colorString: $colorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.colorString, colorString) ||
                other.colorString == colorString));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, document, date, colorString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);
}

abstract class _Note extends Note {
  const factory _Note(
      {required final UniqueId id,
      required final NoteTitle title,
      required final NoteDocument document,
      required final DateTime date,
      required final String colorString}) = _$NoteImpl;
  const _Note._() : super._();

  @override
  UniqueId get id;
  @override
  NoteTitle get title;
  @override
  NoteDocument get document;
  @override
  DateTime get date;
  @override
  String get colorString;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
