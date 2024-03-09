import 'package:office_bingo/const/view/app_colors.dart';
import 'package:office_bingo/entity/lottery_number_entity.dart';
import 'package:office_bingo/feature/home/component/bingo_tile_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/feature/home/provider/bingo_tile_model_provider.g.dart';

@riverpod
BingoTileModel bingoTileModelProvider(
  BingoTileModelProviderRef ref, {
  required LotteryNumberEntity lotteryNumber,
}) {
  return BingoTileModel(
    number: lotteryNumber.number.toString(),
    backgroundColor:
        lotteryNumber.gotAt == null ? AppColors.bingoSheetTileBackground : AppColors.bingoSheetTileBackgroundFulled,
  );
}
