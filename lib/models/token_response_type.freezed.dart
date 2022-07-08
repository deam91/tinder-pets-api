// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_response_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TokenResponseType<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(T error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(T error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(T error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenResponseSuccess<T> value) success,
    required TResult Function(_TokenResponseError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenResponseSuccess<T> value)? success,
    TResult Function(_TokenResponseError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenResponseSuccess<T> value)? success,
    TResult Function(_TokenResponseError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResponseTypeCopyWith<T, $Res> {
  factory $TokenResponseTypeCopyWith(TokenResponseType<T> value,
          $Res Function(TokenResponseType<T>) then) =
      _$TokenResponseTypeCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$TokenResponseTypeCopyWithImpl<T, $Res>
    implements $TokenResponseTypeCopyWith<T, $Res> {
  _$TokenResponseTypeCopyWithImpl(this._value, this._then);

  final TokenResponseType<T> _value;
  // ignore: unused_field
  final $Res Function(TokenResponseType<T>) _then;
}

/// @nodoc
abstract class _$$_TokenResponseSuccessCopyWith<T, $Res> {
  factory _$$_TokenResponseSuccessCopyWith(_$_TokenResponseSuccess<T> value,
          $Res Function(_$_TokenResponseSuccess<T>) then) =
      __$$_TokenResponseSuccessCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_TokenResponseSuccessCopyWithImpl<T, $Res>
    extends _$TokenResponseTypeCopyWithImpl<T, $Res>
    implements _$$_TokenResponseSuccessCopyWith<T, $Res> {
  __$$_TokenResponseSuccessCopyWithImpl(_$_TokenResponseSuccess<T> _value,
      $Res Function(_$_TokenResponseSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$_TokenResponseSuccess<T>));

  @override
  _$_TokenResponseSuccess<T> get _value =>
      super._value as _$_TokenResponseSuccess<T>;
}

/// @nodoc

class _$_TokenResponseSuccess<T> implements _TokenResponseSuccess<T> {
  const _$_TokenResponseSuccess();

  @override
  String toString() {
    return 'TokenResponseType<$T>.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenResponseSuccess<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(T error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(T error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(T error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenResponseSuccess<T> value) success,
    required TResult Function(_TokenResponseError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenResponseSuccess<T> value)? success,
    TResult Function(_TokenResponseError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenResponseSuccess<T> value)? success,
    TResult Function(_TokenResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _TokenResponseSuccess<T> implements TokenResponseType<T> {
  const factory _TokenResponseSuccess() = _$_TokenResponseSuccess<T>;
}

/// @nodoc
abstract class _$$_TokenResponseErrorCopyWith<T, $Res> {
  factory _$$_TokenResponseErrorCopyWith(_$_TokenResponseError<T> value,
          $Res Function(_$_TokenResponseError<T>) then) =
      __$$_TokenResponseErrorCopyWithImpl<T, $Res>;
  $Res call({T error});
}

/// @nodoc
class __$$_TokenResponseErrorCopyWithImpl<T, $Res>
    extends _$TokenResponseTypeCopyWithImpl<T, $Res>
    implements _$$_TokenResponseErrorCopyWith<T, $Res> {
  __$$_TokenResponseErrorCopyWithImpl(_$_TokenResponseError<T> _value,
      $Res Function(_$_TokenResponseError<T>) _then)
      : super(_value, (v) => _then(v as _$_TokenResponseError<T>));

  @override
  _$_TokenResponseError<T> get _value =>
      super._value as _$_TokenResponseError<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_TokenResponseError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_TokenResponseError<T> implements _TokenResponseError<T> {
  const _$_TokenResponseError(this.error);

  @override
  final T error;

  @override
  String toString() {
    return 'TokenResponseType<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenResponseError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_TokenResponseErrorCopyWith<T, _$_TokenResponseError<T>> get copyWith =>
      __$$_TokenResponseErrorCopyWithImpl<T, _$_TokenResponseError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(T error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(T error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(T error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenResponseSuccess<T> value) success,
    required TResult Function(_TokenResponseError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenResponseSuccess<T> value)? success,
    TResult Function(_TokenResponseError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenResponseSuccess<T> value)? success,
    TResult Function(_TokenResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TokenResponseError<T> implements TokenResponseType<T> {
  const factory _TokenResponseError(final T error) = _$_TokenResponseError<T>;

  T get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TokenResponseErrorCopyWith<T, _$_TokenResponseError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
