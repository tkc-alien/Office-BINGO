// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../entity/user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      sheetCount: json['sheetCount'] as int,
      bingoCount: json['bingoCount'] as int,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
      'sheetCount': instance.sheetCount,
      'bingoCount': instance.bingoCount,
    };
