import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:office_bingo/feature/home/home_builder.dart';
import 'package:office_bingo/feature/lottery/lottery_builder.dart';
import 'package:office_bingo/feature/splash/splash_builder.dart';

part 'generated/routes.g.dart';

/// スプラッシュ画面
@TypedGoRoute<SplashRoute>(path: "/")
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SplashBuilder.build(context);
}

/// ホーム画面
@TypedGoRoute<HomeRoute>(
  path: "/home",
  routes: [
    TypedGoRoute<LotteryRoute>(path: "lottery"),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeBuilder.build(context);
}

class LotteryRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    // TODO: implement buildPage
    return DialogPage(
      barrierDismissible: false,
      builder: (context) => LotteryBuilder.build(context),
    );
  }
}

/// モーダル表示用の拡張クラス
class DialogPage<T> extends Page<T> {
  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final WidgetBuilder builder;

  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
        context: context,
        settings: this,
        builder: builder,
        anchorPoint: anchorPoint,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        themes: themes,
      );
}
