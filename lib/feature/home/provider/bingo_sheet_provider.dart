import 'package:office_bingo/entity/bingo_sheet_entity.dart';
import 'package:office_bingo/repository/bingo_sheet_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/feature/home/provider/bingo_sheet_provider.g.dart';

@riverpod
Stream<BingoSheetEntity> bingoSheetEntity(BingoSheetEntityRef ref) {
  final repository = ref.watch(bingoSheetRepositoryProvider);
  return repository.getCurrent();
}
