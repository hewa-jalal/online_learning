import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_learning/domain/users/user.dart';
import 'package:online_learning/domain/users/user_repository.dart';

class FirebaseUserRepository extends UserRepository {
  final userCollection = FirebaseFirestore.instance.collection('users');
  @override
  Future<void> authenticate(UserEntity user) async {
    return userCollection.add(user.toDocument());
  }

  @override
  Future<UserEntity> getUser() async {
    final userDoc = await userCollection.doc().get();
    return UserEntity.fromSnapshot(userDoc);
  }
}
