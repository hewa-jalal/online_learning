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
    // Retrieve the user document from the 'usersCollection' based on the provided ID.
    final userDoc = await usersCollection.doc(id.toString()).get();

    // Check if the user document exists in the database.
    if (userDoc.exists) {
      // Check if the supplied password matches the 'password' field in the user document.
      if (userDoc.data()!['password'] == password) {
        // Password is correct; create a UserModel instance from the document data and return it.
        return UserModel.fromSnapshot(userDoc);
      } else {
        // Incorrect password; throw an exception indicating the issue.
        throw UserNotFoundException(message: 'Password Incorrect');
      }
    } else {
      // User document not found; throw an exception with an appropriate message.
      throw UserNotFoundException(message: 'User with id $id not found');
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
