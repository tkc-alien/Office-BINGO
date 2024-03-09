import 'dart:math';

import 'package:office_bingo/entity/lottery_number_entity.dart';
import 'package:office_bingo/provider/use_mock_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/repository/lottery_number_repository.g.dart';

@riverpod
LotteryNumberRepository lotteryNumberRepository(LotteryNumberRepositoryRef ref) {
  return ref.watch(useMockProvider) ? LotteryNumberRepositoryMock() : LotteryNumberRepositoryImpl();
}

abstract class LotteryNumberRepository {
  Future<LotteryNumberEntity> getRandom();
}

class LotteryNumberRepositoryImpl extends LotteryNumberRepository {
  @override
  Future<LotteryNumberEntity> getRandom() {
    // TODO: implement getRandom
    throw UnimplementedError();
  }
}

class LotteryNumberRepositoryMock extends LotteryNumberRepository {
  @override
  Future<LotteryNumberEntity> getRandom() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return LotteryNumberEntity(
      number: Random().nextInt(100),
      gotAt: DateTime.timestamp(),
    );
  }
}
