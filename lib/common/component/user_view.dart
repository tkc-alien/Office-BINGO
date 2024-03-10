import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:office_bingo/const/view/app_text_styles.dart';
import 'package:office_bingo/entity/user_entity.dart';

class UserModel {
  const UserModel({
    required this.avatar,
    required this.name,
    required this.sheetCount,
    required this.bingoCount,
  });
  final String avatar;
  final String name;
  final int sheetCount;
  final int bingoCount;
}

class UserView extends ConsumerWidget {
  const UserView(this.user, {super.key});

  final UserEntity user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl: user.avatar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: AppTextStyles.titleMedium,
                ),
                Row(
                  children: [
                    const Text("SHEET "),
                    Text("${user.sheetCount}"),
                    const Text(" ／ BINGO "),
                    Text("${user.bingoCount}"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
