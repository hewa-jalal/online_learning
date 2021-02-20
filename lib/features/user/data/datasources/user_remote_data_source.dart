import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_learning/features/user/core/errors/exceptions.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser(int id);
  Future<List<UserEntity>> getUsers();
}

class FirebaseUserRemoteDataSource implements UserRemoteDataSource {
  final users = FirebaseFirestore.instance.collection('users');

  @override
  Future<UserModel> getUser(int id) async {
    final userDoc = await users.doc(id.toString()).get();
    if (userDoc.exists) {
      return UserModel.fromSnapshot(userDoc);
    } else {
      throw UserNotFoundException();
    }
  }

  @override
  Future<List<UserEntity>> getUsers() async {
    final querySnapshot = await users.get();
    return querySnapshot.docs
        .map((doc) => UserModel.fromSnapshot(doc))
        .toList();
  }
}
