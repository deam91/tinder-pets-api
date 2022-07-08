import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.g.dart';

/// [User] class model
@HiveType(typeId: 3)
@JsonSerializable()
class User {
  /// [User] constructor with the [id], [name] and [path] of the image
  const User({
    required this.name,
    required this.id,
  });

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String id;

  /// A function to return a [User] from a [json]
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
