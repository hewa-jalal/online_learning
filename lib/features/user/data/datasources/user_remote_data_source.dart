import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/exceptions.dart';
import '../../domain/entites/user.dart';
import '../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser(int id, String password);
  Future<void> updateUserTime(int id);
  Future<void> userOnlineStatus(int id, bool isOnline);
  Future<List<UserEntity>> getAllUsers();
}

@LazySingleton(as: UserRemoteDataSource)
class FirebaseUserRemoteDataSource extends UserRemoteDataSource {
  final usersCollection = FirebaseFirestore.instance.collection('users');

  @override
  Future<UserModel> getUser(int id, String password) async {
    final userDoc = await usersCollection.doc(id.toString()).get();
    if (userDoc.exists && userDoc.data()!['password'] == password) {
      return UserModel.fromSnapshot(userDoc);
    } else {
      throw UserNotFoundException();
    }
  }

  @override
  Future<List<UserEntity>> getAllUsers() async {
    final querySnapshot = await usersCollection.get();
    return querySnapshot.docs
        .map((doc) => UserModel.fromSnapshot(doc))
        .toList();
  }

  @override
  Future<void> updateUserTime(int id) async {
    await usersCollection.doc(id.toString()).set(
      {
        'lastSeenInEpoch': DateTime.now().millisecondsSinceEpoch,
      },
      SetOptions(merge: true),
    );
  }

  @override
  Future<void> userOnlineStatus(int id, bool isOnline) async {
    await usersCollection.doc(id.toString()).set(
      {
        'isOnline': isOnline,
      },
      SetOptions(merge: true),
    );
  }
}
