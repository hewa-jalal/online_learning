import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_learning/features/user/core/errors/exceptions.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser(int id);
  Stream<List<UserModel>> getUsers();
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
  Stream<List<UserModel>> getUsers() {
    return users.snapshots().map(_usersFromSnapshot);
  }

  List<UserModel> _usersFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs
        .map(
          (doc) => UserModel(
            id: doc['id'],
            role: doc['role'],
            stage: doc['stage'],
            dept: doc['dept'],
            fullName: doc['fullName'],
          ),
        )
        .toList();
  }
}
