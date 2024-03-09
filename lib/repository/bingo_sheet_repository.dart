import 'package:office_bingo/entity/bingo_sheet_entity.dart';
import 'package:office_bingo/entity/lottery_number_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/repository/bingo_sheet_repository.g.dart';

@riverpod
BingoSheetRepository bingoSheetRepository(BingoSheetRepositoryRef ref) {
  return BingoSheetRepositoryMock();
}

abstract class BingoSheetRepository {
  Stream<BingoSheetEntity> getCurrentSheet();
}

class BingoSheetRepositoryImpl implements BingoSheetRepository {
  @override
  Stream<BingoSheetEntity> getCurrentSheet() {
    // TODO: implement getCurrentSheet
    throw UnimplementedError();
  }
}

class BingoSheetRepositoryMock implements BingoSheetRepository {
  @override
  Stream<BingoSheetEntity> getCurrentSheet() {
    return Stream.value(
      BingoSheetEntity(
        sheet: List.generate(
          25,
          (index) => LotteryNumberEntity(
            number: index + 1,
            gotAt: null,
          ),
        ),
        createdAt: DateTime(2024, 1, 1),
      ),
    );
  }
}
