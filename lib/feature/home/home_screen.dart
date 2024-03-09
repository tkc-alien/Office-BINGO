import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:office_bingo/common/component/shadowed_button.dart';
import 'package:office_bingo/const/view/app_button_styles.dart';
import 'package:office_bingo/feature/home/component/bingo_sheet_view.dart';
import 'package:office_bingo/feature/home/component/current_user_view.dart';
import 'package:office_bingo/routes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(child: CurrentUserView()),
                    const Gap(16),
                    ShadowedButton(
                      onPressed: () {},
                      style: AppButtonStyles.elevatedPrimaryOnScaffold,
                      child: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: BingoSheetView(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ShadowedButton(
                    onPressed: () => onPressedLottery(context),
                    style: AppButtonStyles.elevatedPrimaryOnScaffold,
                    child: const Text("抽選する"),
                  ),
                  const Gap(16),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ShadowedButton(
                          onPressed: () {},
                          style: AppButtonStyles.elevatedSecondaryOnScaffold,
                          child: const Text("シェアする"),
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        flex: 1,
                        child: ShadowedButton(
                          onPressed: () {},
                          style: AppButtonStyles.elevatedSecondaryOnScaffold,
                          child: const Text("記録"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 抽選ボタンのハンドラ
  void onPressedLottery(BuildContext context) async {
    await LotteryRoute().push(context);
  }
}
