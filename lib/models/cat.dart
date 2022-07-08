import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:tinder_pets/models/animal.dart';

part 'cat.g.dart';

/// [Cat] class model.
@HiveType(typeId: 0)
@JsonSerializable()
class Cat extends Animal {
  /// [Cat] constructor.
  const Cat({
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

  /// Freezed serializable [json] returns a [Cat]
  factory Cat.fromJson(Map<String, Object?> json) => _$CatFromJson(json);
  Map<String, dynamic> toJson() => _$CatToJson(this);
}
