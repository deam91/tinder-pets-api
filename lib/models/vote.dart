import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'vote.g.dart';

/// [Vote] class model
@HiveType(typeId: 4)
@JsonSerializable()
class Vote extends HiveObject {
  /// [Vote] constructor.
  Vote({
    required this.user_id,
    required this.id,
    required this.animal_id,
    required this.created_at,
    required this.updated_at,
    required this.liked,
    required this.vote_type,
  });

  @HiveField(0)
  final String user_id;

  @HiveField(1)
  final String id;

  @HiveField(2)
  final String animal_id;

  @HiveField(3)
  final DateTime created_at;

  @HiveField(4)
  final DateTime updated_at;

  @HiveField(5)
  bool liked;

  @HiveField(6)
  final String vote_type;

  /// A function to return a [Vote] from a [json]
  factory Vote.fromJson(Map<String, Object?> json) => _$VoteFromJson(json);

  /// A function to return a [json] from a [Vote]
  Map<String, dynamic> toJson() => _$VoteToJson(this);
}
