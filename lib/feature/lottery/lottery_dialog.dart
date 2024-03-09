import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:office_bingo/feature/lottery/component/content_view.dart';
import 'package:office_bingo/feature/lottery/provider/can_pop_flag_provider.dart';

class LotteryDialog extends ConsumerWidget {
  const LotteryDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ダイアログ表示時にポップ可能フラグを無効化しておく
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(canPopFlagProviderProvider.notifier).update(false);
    });

    return GestureDetector(
      onTap: () {
        // ポップ可能な状態か確認する
        if (!ref.read(canPopFlagProviderProvider)) return;
        // ダイアログを閉じる
        context.pop();
      },
      behavior: HitTestBehavior.opaque,
      child: const PopScope(
        canPop: false,
        child: SimpleDialog(
          contentPadding: EdgeInsets.zero,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ContentView(),
            ),
          ],
        ),
      ),
    );
  }
}
