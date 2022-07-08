import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_type.freezed.dart';

@freezed
class TokenResponseType<T> with _$TokenResponseType<T> {
  const factory TokenResponseType.success() = _TokenResponseSuccess;
  const factory TokenResponseType.error(T error) = _TokenResponseError;
}
