import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:office_bingo/dto/exception_display_dto.dart';
import 'package:office_bingo/logger.dart';

extension AsyncValueExt<T> on AsyncValue<T> {
  /// エラーハンドリングを共通化
  R handle<R>({
    required R Function(T data) data,
    required R Function(ExceptionDisplayDTO dto) error,
    required R Function() loading,
  }) {
    return when(
      data: data,
      loading: loading,
      error: (passedError, stackTrace) {
        // ログを出力
        logger.e("エラー", error: passedError, stackTrace: stackTrace);
        // 受け取ったエラーを表示用のクラスに変換する
        final dto = _convertToDisplayDTO(error);
        // 処理を実行
        return error(dto);
      },
    );
  }

  /// エラーオブジェクトを表示用DTOに変換する
  ExceptionDisplayDTO _convertToDisplayDTO(Object error) {
    switch (error.runtimeType) {
      // FirebaseAuthエラー
      case FirebaseAuthException:
        return const ExceptionDisplayDTO(message: "ログインに失敗しました。時間をおいて再度お試しください。");
      // 想定されない型
      default:
        return const ExceptionDisplayDTO(message: "不明なエラーが発生しました。アプリの再起動をお試しください。");
    }
  }
}
