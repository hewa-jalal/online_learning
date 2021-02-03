import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/domain/auth/auth_facade.dart';
import 'package:online_learning/domain/auth/user.dart';
import 'package:online_learning/domain/auth/value_objects.dart';
import 'package:online_learning/domain/auth/auth_failure.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: AuthFacade)
class FireBaseAuthFacade implements AuthFacade {
  final firebase.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FireBaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    // should crash the app if we have an invalid value at this point
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on firebase.FirebaseAuthException catch (e) {
      // we only want to catch the email-already-in-use error
      // because we already checked the other errors in our ValueObjects
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        // just return a generic failure because we shouldn't event have reached this stage
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on firebase.FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        // we want to give the same error for both when email or password is incorrect
        // so a malicious user won't know which one is incorrect
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      // firebase only understand credentials
      final authCredentials = firebase.GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredentials);
      return right(unit);
    } on firebase.FirebaseAuthException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser.toDomain());

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
