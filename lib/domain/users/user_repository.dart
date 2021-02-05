import 'package:online_learning/domain/users/user.dart';

abstract class UserRepository {
  Future<void> authenticate(UserEntity user);

  Future<UserEntity> getUser();
}
