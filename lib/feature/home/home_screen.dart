import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:office_bingo/common/component/shadowed_button.dart';
import 'package:office_bingo/feature/home/component/bingo_sheet_view.dart';
import 'package:office_bingo/feature/home/component/current_user_view.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
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
                    const Gap(20),
                    ShadowedButton(
                      onPressed: () {},
                      child: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              const BingoSheetView(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ShadowedButton(
                    onPressed: () {},
                    child: const Text("抽選する"),
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ShadowedButton(
                          onPressed: () {},
                          child: const Text("シェア"),
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        flex: 1,
                        child: ShadowedButton(
                          onPressed: () {},
                          child: const Text("きろく"),
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
}
