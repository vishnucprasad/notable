// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupCredentials {
  Name get name => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupCredentialsCopyWith<SignupCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupCredentialsCopyWith<$Res> {
  factory $SignupCredentialsCopyWith(
          SignupCredentials value, $Res Function(SignupCredentials) then) =
      _$SignupCredentialsCopyWithImpl<$Res, SignupCredentials>;
  @useResult
  $Res call({Name name, EmailAddress emailAddress, Password password});
}

/// @nodoc
class _$SignupCredentialsCopyWithImpl<$Res, $Val extends SignupCredentials>
    implements $SignupCredentialsCopyWith<$Res> {
  _$SignupCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupCredentialsImplCopyWith<$Res>
    implements $SignupCredentialsCopyWith<$Res> {
  factory _$$SignupCredentialsImplCopyWith(_$SignupCredentialsImpl value,
          $Res Function(_$SignupCredentialsImpl) then) =
      __$$SignupCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Name name, EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$SignupCredentialsImplCopyWithImpl<$Res>
    extends _$SignupCredentialsCopyWithImpl<$Res, _$SignupCredentialsImpl>
    implements _$$SignupCredentialsImplCopyWith<$Res> {
  __$$SignupCredentialsImplCopyWithImpl(_$SignupCredentialsImpl _value,
      $Res Function(_$SignupCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$SignupCredentialsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$SignupCredentialsImpl extends _SignupCredentials {
  const _$SignupCredentialsImpl(
      {required this.name, required this.emailAddress, required this.password})
      : super._();

  @override
  final Name name;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignupCredentials(name: $name, emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupCredentialsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupCredentialsImplCopyWith<_$SignupCredentialsImpl> get copyWith =>
      __$$SignupCredentialsImplCopyWithImpl<_$SignupCredentialsImpl>(
          this, _$identity);
}

abstract class _SignupCredentials extends SignupCredentials {
  const factory _SignupCredentials(
      {required final Name name,
      required final EmailAddress emailAddress,
      required final Password password}) = _$SignupCredentialsImpl;
  const _SignupCredentials._() : super._();

  @override
  Name get name;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$SignupCredentialsImplCopyWith<_$SignupCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
