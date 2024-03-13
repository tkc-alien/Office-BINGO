import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:office_bingo/config/firebase_options_dev.dart' as dev;
import 'package:office_bingo/config/firebase_options_stg.dart' as stg;
import 'package:office_bingo/logger.dart';
import 'package:office_bingo/provider/use_mock_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/feature/splash/provider/initialize_provider.g.dart';

/// アプリの初期化を行う
@riverpod
Future<void> initialize(InitializeRef ref) async {
  // Flavorを取得する
  const flavor = String.fromEnvironment("flavor");

  // モックを使用しない場合のみ実行する初期化処理
  if (!ref.watch(useMockProvider)) {
    // Firebaseの初期化オプションをFlavorで切り分ける
    final options = switch (flavor) {
      "prd" => throw UnimplementedError(),
      "stg" => stg.DefaultFirebaseOptions.currentPlatform,
      "dev" => dev.DefaultFirebaseOptions.currentPlatform,
      _ => throw Exception("ビルド時にflavorが指定されていません。"),
    };
    // Firebase初期化
    await Firebase.initializeApp(options: options);
    // Firebaseサインイン
    await FirebaseAuth.instance.signInAnonymously();
    // サインイン結果をログに出力
    logger.i(
      "FirebaseAuth SignedIn.\nuid: ${FirebaseAuth.instance.currentUser?.uid ?? "NO USER FOUND"}",
    );
  } else {
    logger.w("Application uses MockMode.");
    // モックの場合は少し待つ
    await Future.delayed(const Duration(milliseconds: 1000));
  }

  logger.i("Application initialized.\nflavor: $flavor");
}
