// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatAdapter extends TypeAdapter<Cat> {
  @override
  final int typeId = 0;

  @override
  Cat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cat(
      name: fields[0] as String,
      id: fields[1] as String,
      path: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Cat obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.path);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
      name: json['name'] as String,
      id: json['id'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'path': instance.path,
    };
