import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:office_bingo/feature/home/home_builder.dart';
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
@TypedGoRoute<HomeRoute>(path: "/home")
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeBuilder.build(context);
}
