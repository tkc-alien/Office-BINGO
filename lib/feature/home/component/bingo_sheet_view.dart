import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:office_bingo/const/view/app_colors.dart';
import 'package:office_bingo/const/view/app_materials.dart';
import 'package:office_bingo/dto/exception_display_dto.dart';
import 'package:office_bingo/entity/bingo_sheet_entity.dart';
import 'package:office_bingo/extension/async_value_ext.dart';
import 'package:office_bingo/feature/home/component/bingo_tile_view.dart';
import 'package:office_bingo/feature/home/provider/bingo_sheet_provider.dart';

class BingoSheetView extends ConsumerWidget {
  const BingoSheetView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bingoSheetAsync = ref.watch(bingoSheetEntityProvider);

    final content = bingoSheetAsync.handle(
      data: (bingoSheet) => _buildData(context, bingoSheet),
      error: (dto) => _buildError(context, dto),
      loading: () => const SizedBox.shrink(),
    );

    return AspectRatio(
      aspectRatio: 1,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.primary,
              width: 6,
            ),
          ),
          boxShadow: [AppMaterials.shadowOnScaffold],
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: content,
        ),
      ),
    );
  }

  Widget _buildData(BuildContext context, BingoSheetEntity bingoSheet) {
    final lotteryNumbers = bingoSheet.sheet;
    return Column(
      children: List.generate(
        5,
        (x) => Row(
          children: List.generate(
            5,
            (y) => Expanded(child: BingoTileView(lotteryNumbers[x * 5 + y])),
          ),
        ),
      ),
    );
  }

  Widget _buildError(BuildContext context, ExceptionDisplayDTO _) {
    return const Center(
      child: Text("ビンゴシートの取得に失敗しました\n時間をおいて再起動してください"),
    );
  }
}
