import 'package:office_bingo/entity/user_entity.dart';
import 'package:office_bingo/provider/use_mock_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/repository/user_repository.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return ref.watch(useMockProvider) ? UserRepositoryMock() : UserRepositoryImpl();
}

abstract class UserRepository {
  UserEntity getCurrent();
}

class UserRepositoryImpl implements UserRepository {
  @override
  UserEntity getCurrent() {
    // TODO: implement
    throw UnimplementedError();
  }
}

class UserRepositoryMock implements UserRepository {
  @override
  UserEntity getCurrent() {
    return const UserEntity(
      name: "テストユーザ",
      avatar: "https://placehold.jp/150x150.png?text=Avatar",
      sheetCount: 1,
      bingoCount: 0,
    );
  }
}
