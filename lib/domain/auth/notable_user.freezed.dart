// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notable_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotableUser {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotableUserCopyWith<NotableUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotableUserCopyWith<$Res> {
  factory $NotableUserCopyWith(
          NotableUser value, $Res Function(NotableUser) then) =
      _$NotableUserCopyWithImpl<$Res, NotableUser>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class _$NotableUserCopyWithImpl<$Res, $Val extends NotableUser>
    implements $NotableUserCopyWith<$Res> {
  _$NotableUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotableUserImplCopyWith<$Res>
    implements $NotableUserCopyWith<$Res> {
  factory _$$NotableUserImplCopyWith(
          _$NotableUserImpl value, $Res Function(_$NotableUserImpl) then) =
      __$$NotableUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$NotableUserImplCopyWithImpl<$Res>
    extends _$NotableUserCopyWithImpl<$Res, _$NotableUserImpl>
    implements _$$NotableUserImplCopyWith<$Res> {
  __$$NotableUserImplCopyWithImpl(
      _$NotableUserImpl _value, $Res Function(_$NotableUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NotableUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$NotableUserImpl implements _NotableUser {
  const _$NotableUserImpl({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'NotableUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotableUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotableUserImplCopyWith<_$NotableUserImpl> get copyWith =>
      __$$NotableUserImplCopyWithImpl<_$NotableUserImpl>(this, _$identity);
}

abstract class _NotableUser implements NotableUser {
  const factory _NotableUser({required final UniqueId id}) = _$NotableUserImpl;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$$NotableUserImplCopyWith<_$NotableUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
