import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:office_bingo/const/view/app_colors.dart';
import 'package:office_bingo/const/view/app_icons.dart';
import 'package:office_bingo/const/view/app_text_styles.dart';
import 'package:office_bingo/entity/lottery_number_entity.dart';
import 'package:office_bingo/extension/async_value_ext.dart';
import 'package:office_bingo/feature/lottery/provider/can_pop_flag_provider.dart';
import 'package:office_bingo/feature/lottery/provider/random_lottery_number_provider.dart';

class ContentView extends ConsumerWidget {
  const ContentView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomAsync = ref.watch(randomLotteryNumberProvider);
    return randomAsync.handle(
      data: (lotteryNumber) => _NumberContent(lotteryNumber),
      error: (dto) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              AppIcons.error,
              color: AppColors.foregroundSecondary,
            ),
            const Gap(8),
            Text(
              dto.message,
              style: AppTextStyles.bodyMedium,
            ),
          ],
        ),
      ),
      // TODO: loading 仮の姿
      loading: () => const Padding(
        padding: EdgeInsets.all(48),
        child: CircularProgressIndicator(strokeWidth: 12),
      ),
    );
  }
}

/// 抽選番号表示
///
/// アニメーションを含むためStatefulWidgetで作成する。
class _NumberContent extends ConsumerStatefulWidget {
  const _NumberContent(this.lotteryNumber);

  final LotteryNumberEntity lotteryNumber;

  @override
  ConsumerState<_NumberContent> createState() => _NumberContentState();
}

class _NumberContentState extends ConsumerState<_NumberContent> with TickerProviderStateMixin {
  /// アニメーションコントローラ
  late final AnimationController numberController = AnimationController(
    duration: const Duration(milliseconds: 2600),
    vsync: this,
  )..forward();

  @override
  void initState() {
    super.initState();
    // 表示アニメーション完了時、ポップ可能フラグを有効化する
    numberController.forward().whenCompleteOrCancel(() {
      ref.read(canPopFlagProviderProvider.notifier).update(true);
    });
  }

  @override
  void dispose() {
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final container = constraints.biggest;
        final maxWidth = constraints.maxWidth;
        final maxHeight = constraints.maxHeight;
        return Stack(
          children: [buildNumberLabel(container, maxWidth, maxHeight)],
        );
      },
    );
  }

  /// 抽選番号のトランジションを作成する
  Widget buildNumberLabel(Size container, double maxWidth, double maxHeight) {
    final numberWidth = maxWidth * 0.8;
    final numberHeight = maxHeight * 0.8;
    final horizontalPadding = (maxWidth - numberWidth) / 2;
    final verticalPadding = (maxHeight - numberHeight) / 2;
    return PositionedTransition(
      rect: RelativeRectTween(
        begin: RelativeRect.fromSize(
          Rect.fromLTWH(
            horizontalPadding,
            (verticalPadding + numberHeight) * -1, // 番号表示の高さ＋少し分だけダイアログの上にはみ出させる
            numberWidth,
            numberHeight,
          ),
          container,
        ),
        end: RelativeRect.fromSize(
          Rect.fromLTWH(
            horizontalPadding,
            verticalPadding,
            numberWidth,
            numberHeight,
          ),
          container,
        ),
      ).animate(
        CurvedAnimation(
          parent: numberController,
          curve: Curves.elasticOut,
        ),
      ),
      child: FittedBox(
        child: Text(
          "${widget.lotteryNumber.number}",
          style: AppTextStyles.lotteryNumber,
        ),
      ),
    );
  }
}
