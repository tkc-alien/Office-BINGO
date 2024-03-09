import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/feature/lottery/provider/can_pop_flag_provider.g.dart';

/// 抽選ダイアログを閉じることができるかのフラグ
@Riverpod(keepAlive: true)
class CanPopFlagProvider extends _$CanPopFlagProvider {
  @override
  bool build() => false;

  void update(bool flag) => state = flag;
}
