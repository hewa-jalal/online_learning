import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}
