// Facade is a design pattern for connecting two or more classes with weird interfaces into just one simplified interface. In our case, it will connect FirebaseAuth and GoogleSignIn.

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:online_learning/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class AuthFacade {
  // This return type is perfect because we can easily use it even for methods which do return a value. If, for example, a method doesn't return void (a.k.a. Unit), we'd return Either<AuthFailure, SomeType>.
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
