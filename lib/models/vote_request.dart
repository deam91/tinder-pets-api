import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinder_pets/models/vote_type.dart';

part 'vote_request.freezed.dart';
part 'vote_request.g.dart';

/// Freezed class for [VoteRequest]
@freezed
class VoteRequest with _$VoteRequest {
  /// Freezed class for [VoteRequest]
  const factory VoteRequest({
    required VoteType vote_type,
    required String animal_id,
    required bool liked,
  }) = _VoteRequest;

  /// Freezed serializable [json] returns a [VoteRequest]
  factory VoteRequest.fromJson(Map<String, Object?> json) =>
      _$VoteRequestFromJson(json);
}
