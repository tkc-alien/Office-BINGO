import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:office_bingo/common/component/user_view.dart';
import 'package:office_bingo/const/view/app_colors.dart';
import 'package:office_bingo/feature/home/provider/current_user_provider.dart';

class CurrentUserView extends ConsumerWidget {
  const CurrentUserView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: AppColors.componentBackground,
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.componentFrame,
            width: 2,
          ),
        ),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: UserView(user),
    );
  }
}
