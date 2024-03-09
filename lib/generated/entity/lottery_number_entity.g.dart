// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../entity/lottery_number_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryNumberEntityImpl _$$LotteryNumberEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryNumberEntityImpl(
      number: json['number'] as int,
      gotAt: json['gotAt'] == null
          ? null
          : DateTime.parse(json['gotAt'] as String),
    );

Map<String, dynamic> _$$LotteryNumberEntityImplToJson(
        _$LotteryNumberEntityImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'gotAt': instance.gotAt?.toIso8601String(),
    };
