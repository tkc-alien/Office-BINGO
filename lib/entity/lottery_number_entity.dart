// To build, run [ dart run build_runner build --delete-conflicting-outputs ]
// To watch, run [ dart run build_runner watch --delete-conflicting-outputs ]

import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/entity/lottery_number_entity.freezed.dart';
part '../generated/entity/lottery_number_entity.g.dart';

@freezed
class LotteryNumberEntity with _$LotteryNumberEntity {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory LotteryNumberEntity({
    required int number,
    required DateTime? gotAt,
  }) = _LotteryNumberEntity;

  factory LotteryNumberEntity.fromJson(Map<String, dynamic> json) => _$LotteryNumberEntityFromJson(json);
}
