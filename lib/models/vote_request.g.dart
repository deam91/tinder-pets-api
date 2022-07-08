// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VoteRequest _$$_VoteRequestFromJson(Map<String, dynamic> json) =>
    _$_VoteRequest(
      vote_type: $enumDecode(_$VoteTypeEnumMap, json['vote_type']),
      animal_id: json['animal_id'] as String,
      liked: json['liked'] as bool,
    );

Map<String, dynamic> _$$_VoteRequestToJson(_$_VoteRequest instance) =>
    <String, dynamic>{
      'vote_type': _$VoteTypeEnumMap[instance.vote_type],
      'animal_id': instance.animal_id,
      'liked': instance.liked,
    };

const _$VoteTypeEnumMap = {
  VoteType.cat: 'cat',
  VoteType.dog: 'dog',
};
