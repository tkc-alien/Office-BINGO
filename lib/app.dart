import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:office_bingo/const/view/app_button_styles.dart";
import "package:office_bingo/routes.dart";

final _routerConfig = GoRouter(routes: $appRoutes);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _routerConfig,
      title: "出社ビンゴ",
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppButtonStyles.elevatedPrimary,
        ),
      ),
    );
  }
}
