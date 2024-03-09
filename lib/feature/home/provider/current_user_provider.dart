import 'package:office_bingo/entity/user_entity.dart';
import 'package:office_bingo/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/feature/home/provider/current_user_provider.g.dart';

@riverpod
UserEntity currentUser(CurrentUserRef ref) {
  final repository = ref.watch(userRepositoryProvider);
  return repository.getCurrent();
}
