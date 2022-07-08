// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vote_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoteRequest _$VoteRequestFromJson(Map<String, dynamic> json) {
  return _VoteRequest.fromJson(json);
}

/// @nodoc
mixin _$VoteRequest {
  VoteType get vote_type => throw _privateConstructorUsedError;
  String get animal_id => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteRequestCopyWith<VoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteRequestCopyWith<$Res> {
  factory $VoteRequestCopyWith(
          VoteRequest value, $Res Function(VoteRequest) then) =
      _$VoteRequestCopyWithImpl<$Res>;
  $Res call({VoteType vote_type, String animal_id, bool liked});
}

/// @nodoc
class _$VoteRequestCopyWithImpl<$Res> implements $VoteRequestCopyWith<$Res> {
  _$VoteRequestCopyWithImpl(this._value, this._then);

  final VoteRequest _value;
  // ignore: unused_field
  final $Res Function(VoteRequest) _then;

  @override
  $Res call({
    Object? vote_type = freezed,
    Object? animal_id = freezed,
    Object? liked = freezed,
  }) {
    return _then(_value.copyWith(
      vote_type: vote_type == freezed
          ? _value.vote_type
          : vote_type // ignore: cast_nullable_to_non_nullable
              as VoteType,
      animal_id: animal_id == freezed
          ? _value.animal_id
          : animal_id // ignore: cast_nullable_to_non_nullable
              as String,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_VoteRequestCopyWith<$Res>
    implements $VoteRequestCopyWith<$Res> {
  factory _$$_VoteRequestCopyWith(
          _$_VoteRequest value, $Res Function(_$_VoteRequest) then) =
      __$$_VoteRequestCopyWithImpl<$Res>;
  @override
  $Res call({VoteType vote_type, String animal_id, bool liked});
}

/// @nodoc
class __$$_VoteRequestCopyWithImpl<$Res> extends _$VoteRequestCopyWithImpl<$Res>
    implements _$$_VoteRequestCopyWith<$Res> {
  __$$_VoteRequestCopyWithImpl(
      _$_VoteRequest _value, $Res Function(_$_VoteRequest) _then)
      : super(_value, (v) => _then(v as _$_VoteRequest));

  @override
  _$_VoteRequest get _value => super._value as _$_VoteRequest;

  @override
  $Res call({
    Object? vote_type = freezed,
    Object? animal_id = freezed,
    Object? liked = freezed,
  }) {
    return _then(_$_VoteRequest(
      vote_type: vote_type == freezed
          ? _value.vote_type
          : vote_type // ignore: cast_nullable_to_non_nullable
              as VoteType,
      animal_id: animal_id == freezed
          ? _value.animal_id
          : animal_id // ignore: cast_nullable_to_non_nullable
              as String,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VoteRequest implements _VoteRequest {
  const _$_VoteRequest(
      {required this.vote_type, required this.animal_id, required this.liked});

  factory _$_VoteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VoteRequestFromJson(json);

  @override
  final VoteType vote_type;
  @override
  final String animal_id;
  @override
  final bool liked;

  @override
  String toString() {
    return 'VoteRequest(vote_type: $vote_type, animal_id: $animal_id, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoteRequest &&
            const DeepCollectionEquality().equals(other.vote_type, vote_type) &&
            const DeepCollectionEquality().equals(other.animal_id, animal_id) &&
            const DeepCollectionEquality().equals(other.liked, liked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vote_type),
      const DeepCollectionEquality().hash(animal_id),
      const DeepCollectionEquality().hash(liked));

  @JsonKey(ignore: true)
  @override
  _$$_VoteRequestCopyWith<_$_VoteRequest> get copyWith =>
      __$$_VoteRequestCopyWithImpl<_$_VoteRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoteRequestToJson(this);
  }
}

abstract class _VoteRequest implements VoteRequest {
  const factory _VoteRequest(
      {required final VoteType vote_type,
      required final String animal_id,
      required final bool liked}) = _$_VoteRequest;

  factory _VoteRequest.fromJson(Map<String, dynamic> json) =
      _$_VoteRequest.fromJson;

  @override
  VoteType get vote_type => throw _privateConstructorUsedError;
  @override
  String get animal_id => throw _privateConstructorUsedError;
  @override
  bool get liked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VoteRequestCopyWith<_$_VoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
