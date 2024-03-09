// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../entity/bingo_sheet_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BingoSheetEntityImpl _$$BingoSheetEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BingoSheetEntityImpl(
      sheet: (json['sheet'] as List<dynamic>)
          .map((e) => LotteryNumberEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BingoSheetEntityImplToJson(
        _$BingoSheetEntityImpl instance) =>
    <String, dynamic>{
      'sheet': instance.sheet.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
