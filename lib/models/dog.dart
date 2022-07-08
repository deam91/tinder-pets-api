import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:tinder_pets/models/animal.dart';

part 'dog.g.dart';

/// Freezed class for [Dog]
@HiveType(typeId: 1)
@JsonSerializable()
class Dog extends Animal {
  /// Freezed class for cats
  Dog({
    required this.name,
    required this.id,
    required this.path,
  }) : super('');

  @HiveField(0)
  final String name;

  @HiveField(1)
  @override
  final String id;

  @HiveField(2)
  final String path;

  /// Freezed serializable [json] returns a [Dog]
  factory Dog.fromJson(Map<String, Object?> json) => _$DogFromJson(json);
  Map<String, dynamic> toJson() => _$DogToJson(this);
}
