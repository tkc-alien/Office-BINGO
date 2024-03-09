// To build, run [ dart run build_runner build --delete-conflicting-outputs ]
// To watch, run [ dart run build_runner watch --delete-conflicting-outputs ]

import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/entity/user_entity.freezed.dart';
part '../generated/entity/user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory UserEntity({
    required String name,
    required String avatar,
    required int sheetCount,
    required int bingoCount,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}
