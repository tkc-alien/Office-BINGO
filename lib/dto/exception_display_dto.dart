// To build, run [ flutter pub run build_runner build --delete-conflicting-outputs ]
// To watch, run [ flutter pub run build_runner watch --delete-conflicting-outputs ]

import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/dto/exception_display_dto.freezed.dart';

@freezed
class ExceptionDisplayDTO with _$ExceptionDisplayDTO {
  const factory ExceptionDisplayDTO({
    required String message,
  }) = _ExceptionDisplayDTO;
}
