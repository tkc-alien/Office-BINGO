import 'package:office_bingo/entity/lottery_number_entity.dart';
import 'package:office_bingo/repository/lottery_number_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/feature/lottery/provider/random_lottery_number_provider.g.dart';

@riverpod
Future<LotteryNumberEntity> randomLotteryNumber(RandomLotteryNumberRef ref) async {
  final repository = ref.watch(lotteryNumberRepositoryProvider);

  // 取得結果を格納する変数
  LotteryNumberEntity? tmpResult;

  // 取得を実行する（３秒以内に取得が完了しても、３秒経過するまでは返却させない）
  await Future.wait([
    repository.getRandom().then((value) => tmpResult = value),
    Future.delayed(const Duration(milliseconds: 3000)),
  ]);

  // 取得結果を検証
  final result = tmpResult;
  if (result == null) throw Exception("抽選番号の取得が完了しないまま結果を返却しようとしました。");

  // 返却
  return result;
}
