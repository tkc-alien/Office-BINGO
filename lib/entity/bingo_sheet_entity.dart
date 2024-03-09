// To build, run [ dart run build_runner build --delete-conflicting-outputs ]
// To watch, run [ dart run build_runner watch --delete-conflicting-outputs ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_bingo/entity/lottery_number_entity.dart';

part '../generated/entity/bingo_sheet_entity.freezed.dart';
part '../generated/entity/bingo_sheet_entity.g.dart';

@freezed
class BingoSheetEntity with _$BingoSheetEntity {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory BingoSheetEntity({
    required List<LotteryNumberEntity> sheet,
    required DateTime createdAt,
  }) = _BingoSheetEntity;

  factory BingoSheetEntity.fromJson(Map<String, dynamic> json) => _$BingoSheetEntityFromJson(json);
}
