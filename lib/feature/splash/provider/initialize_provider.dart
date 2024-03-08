import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:office_bingo/provider/use_mock_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/feature/splash/provider/initialize_provider.g.dart';

/// アプリの初期化を行う
@riverpod
Future<void> initialize(InitializeRef ref) async {
  // モックを使用しない場合のみ実行する初期化処理
  if (!ref.watch(useMockProvider)) {
    // Firebase初期化
    await Firebase.initializeApp();
    // Firebaseログイン
    await FirebaseAuth.instance.signInAnonymously();
  } else {
    // モックの場合は少し待つ
    await Future.delayed(const Duration(milliseconds: 1500));
  }
}
