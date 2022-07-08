// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VoteAdapter extends TypeAdapter<Vote> {
  @override
  final int typeId = 4;

  @override
  Vote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Vote(
      user_id: fields[0] as String,
      id: fields[1] as String,
      animal_id: fields[2] as String,
      created_at: fields[3] as DateTime,
      updated_at: fields[4] as DateTime,
      liked: fields[5] as bool,
      vote_type: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Vote obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.user_id)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.animal_id)
      ..writeByte(3)
      ..write(obj.created_at)
      ..writeByte(4)
      ..write(obj.updated_at)
      ..writeByte(5)
      ..write(obj.liked)
      ..writeByte(6)
      ..write(obj.vote_type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vote _$VoteFromJson(Map<String, dynamic> json) => Vote(
      user_id: json['user_id'] as String,
      id: json['id'] as String,
      animal_id: json['animal_id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      liked: json['liked'] as bool,
      vote_type: json['vote_type'] as String,
    );

Map<String, dynamic> _$VoteToJson(Vote instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'id': instance.id,
      'animal_id': instance.animal_id,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'liked': instance.liked,
      'vote_type': instance.vote_type,
    };
