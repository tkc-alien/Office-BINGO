import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:office_bingo/const/view/app_colors.dart';
import 'package:office_bingo/dto/exception_display_dto.dart';
import 'package:office_bingo/extension/async_value_ext.dart';
import 'package:office_bingo/feature/splash/provider/initialize_provider.dart';
import 'package:office_bingo/routes.dart';

/// スプラッシュ画面
///
/// NativeSplashの裏で形式的に表示する画面。
/// 初期化処理を実行・監視し、状態に応じて画面を変更する。
class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 初期化処理の状態を監視する
    final initializeAsync = ref.watch(initializeProvider);
    initializeAsync.handle(
      data: (_) => replaceToHome(context),
      error: (dto) => showException(context, dto),
      loading: () => {},
    );
    // 何もない背景を描画する
    return const Scaffold(
      backgroundColor: AppColors.primary,
    );
  }

  void replaceToHome(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      const HomeRoute().replace(context);
    });
  }

  void showException(BuildContext context, ExceptionDisplayDTO dto) {
    // TODO: エラーアラートを表示する
  }
}
