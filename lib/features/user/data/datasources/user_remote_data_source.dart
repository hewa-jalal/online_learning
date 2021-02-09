import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_learning/features/user/core/errors/exceptions.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser(int id);
}

class FirebaseUserRemoteDataSource implements UserRemoteDataSource {
  final users = FirebaseFirestore.instance.collection('users');

  @override
  Future<UserModel> getUser(int id) async {
    final userDoc = await users.doc(id.toString()).get();
    if (userDoc != null) {
      return UserModel.fromSnapshot(userDoc);
    } else {
      throw UserNotFoundException();
    }
  }
}
