import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/provider/use_mock_provider.g.dart';

/// モックデータを使用するフラグ
@riverpod
bool useMock(UseMockRef ref) {
  return true; // TODO: 一旦常にモック化する
}
