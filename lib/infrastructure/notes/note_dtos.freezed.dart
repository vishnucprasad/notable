// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) {
  return _NoteDto.fromJson(json);
}

/// @nodoc
mixin _$NoteDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<dynamic> get document => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get colorString => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDtoCopyWith<NoteDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDtoCopyWith<$Res> {
  factory $NoteDtoCopyWith(NoteDto value, $Res Function(NoteDto) then) =
      _$NoteDtoCopyWithImpl<$Res, NoteDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String title,
      List<dynamic> document,
      DateTime date,
      String colorString,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$NoteDtoCopyWithImpl<$Res, $Val extends NoteDto>
    implements $NoteDtoCopyWith<$Res> {
  _$NoteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? document = null,
    Object? date = null,
    Object? colorString = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      colorString: null == colorString
          ? _value.colorString
          : colorString // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteDtoImplCopyWith<$Res> implements $NoteDtoCopyWith<$Res> {
  factory _$$NoteDtoImplCopyWith(
          _$NoteDtoImpl value, $Res Function(_$NoteDtoImpl) then) =
      __$$NoteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String title,
      List<dynamic> document,
      DateTime date,
      String colorString,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$NoteDtoImplCopyWithImpl<$Res>
    extends _$NoteDtoCopyWithImpl<$Res, _$NoteDtoImpl>
    implements _$$NoteDtoImplCopyWith<$Res> {
  __$$NoteDtoImplCopyWithImpl(
      _$NoteDtoImpl _value, $Res Function(_$NoteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? document = null,
    Object? date = null,
    Object? colorString = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$NoteDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value._document
          : document // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      colorString: null == colorString
          ? _value.colorString
          : colorString // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteDtoImpl extends _NoteDto {
  const _$NoteDtoImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      required this.title,
      required final List<dynamic> document,
      required this.date,
      required this.colorString,
      @ServerTimeStampConverter() required this.serverTimeStamp})
      : _document = document,
        super._();

  factory _$NoteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteDtoImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;
  @override
  final String title;
  final List<dynamic> _document;
  @override
  List<dynamic> get document {
    if (_document is EqualUnmodifiableListView) return _document;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_document);
  }

  @override
  final DateTime date;
  @override
  final String colorString;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'NoteDto(id: $id, title: $title, document: $document, date: $date, colorString: $colorString, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._document, _document) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.colorString, colorString) ||
                other.colorString == colorString) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_document),
      date,
      colorString,
      serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDtoImplCopyWith<_$NoteDtoImpl> get copyWith =>
      __$$NoteDtoImplCopyWithImpl<_$NoteDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteDtoImplToJson(
      this,
    );
  }
}

abstract class _NoteDto extends NoteDto {
  const factory _NoteDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      required final String title,
      required final List<dynamic> document,
      required final DateTime date,
      required final String colorString,
      @ServerTimeStampConverter()
      required final FieldValue serverTimeStamp}) = _$NoteDtoImpl;
  const _NoteDto._() : super._();

  factory _NoteDto.fromJson(Map<String, dynamic> json) = _$NoteDtoImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;
  @override
  String get title;
  @override
  List<dynamic> get document;
  @override
  DateTime get date;
  @override
  String get colorString;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$NoteDtoImplCopyWith<_$NoteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
