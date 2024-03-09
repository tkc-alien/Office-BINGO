import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:office_bingo/const/view/app_colors.dart';
import 'package:office_bingo/const/view/app_text_styles.dart';
import 'package:office_bingo/entity/lottery_number_entity.dart';
import 'package:office_bingo/feature/home/provider/bingo_tile_model_provider.dart';

class BingoTileModel {
  const BingoTileModel({
    required this.number,
    required this.backgroundColor,
  });

  final String number;
  final Color backgroundColor;
}

class BingoTileView extends ConsumerWidget {
  const BingoTileView(this.lotteryNumber, {super.key});

  final LotteryNumberEntity lotteryNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(bingoTileModelProviderProvider(lotteryNumber: lotteryNumber));
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: model.backgroundColor,
          border: const Border.fromBorderSide(
            BorderSide(
              color: AppColors.componentFrame,
            ),
          ),
        ),
        child: FittedBox(
          child: Text(
            model.number,
            style: AppTextStyles.lotteryNumber,
          ),
        ),
      ),
    );
  }
}
