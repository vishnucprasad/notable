// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() permissionDenied,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? permissionDenied,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? permissionDenied,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesFailureCopyWith<$Res> {
  factory $NotesFailureCopyWith(
          NotesFailure value, $Res Function(NotesFailure) then) =
      _$NotesFailureCopyWithImpl<$Res, NotesFailure>;
}

/// @nodoc
class _$NotesFailureCopyWithImpl<$Res, $Val extends NotesFailure>
    implements $NotesFailureCopyWith<$Res> {
  _$NotesFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$NotesFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'NotesFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() permissionDenied,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? permissionDenied,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToDelete,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? permissionDenied,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements NotesFailure {
  const factory _Unexpected() = _$UnexpectedImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(_$PermissionDeniedImpl value,
          $Res Function(_$PermissionDeniedImpl) then) =
      __$$PermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$NotesFailureCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(_$PermissionDeniedImpl _value,
      $Res Function(_$PermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionDeniedImpl implements _PermissionDenied {
  const _$PermissionDeniedImpl();

  @override
  String toString() {
    return 'NotesFailure.permissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() permissionDenied,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? permissionDenied,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToDelete,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? permissionDenied,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements NotesFailure {
  const factory _PermissionDenied() = _$PermissionDeniedImpl;
}

/// @nodoc
abstract class _$$UnableToUpdateImplCopyWith<$Res> {
  factory _$$UnableToUpdateImplCopyWith(_$UnableToUpdateImpl value,
          $Res Function(_$UnableToUpdateImpl) then) =
      __$$UnableToUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToUpdateImplCopyWithImpl<$Res>
    extends _$NotesFailureCopyWithImpl<$Res, _$UnableToUpdateImpl>
    implements _$$UnableToUpdateImplCopyWith<$Res> {
  __$$UnableToUpdateImplCopyWithImpl(
      _$UnableToUpdateImpl _value, $Res Function(_$UnableToUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToUpdateImpl implements _UnableToUpdate {
  const _$UnableToUpdateImpl();

  @override
  String toString() {
    return 'NotesFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() permissionDenied,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? permissionDenied,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? permissionDenied,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements NotesFailure {
  const factory _UnableToUpdate() = _$UnableToUpdateImpl;
}

/// @nodoc
abstract class _$$UnableToDeleteImplCopyWith<$Res> {
  factory _$$UnableToDeleteImplCopyWith(_$UnableToDeleteImpl value,
          $Res Function(_$UnableToDeleteImpl) then) =
      __$$UnableToDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToDeleteImplCopyWithImpl<$Res>
    extends _$NotesFailureCopyWithImpl<$Res, _$UnableToDeleteImpl>
    implements _$$UnableToDeleteImplCopyWith<$Res> {
  __$$UnableToDeleteImplCopyWithImpl(
      _$UnableToDeleteImpl _value, $Res Function(_$UnableToDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToDeleteImpl implements _UnableToDelete {
  const _$UnableToDeleteImpl();

  @override
  String toString() {
    return 'NotesFailure.unableToDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() permissionDenied,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToDelete,
  }) {
    return unableToDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? permissionDenied,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? permissionDenied,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToDelete != null) {
      return unableToDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_UnableToDelete value) unableToDelete,
  }) {
    return unableToDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_UnableToDelete value)? unableToDelete,
  }) {
    return unableToDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToDelete != null) {
      return unableToDelete(this);
    }
    return orElse();
  }
}

abstract class _UnableToDelete implements NotesFailure {
  const factory _UnableToDelete() = _$UnableToDeleteImpl;
}
