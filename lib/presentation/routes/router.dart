import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:online_learning/presentation/sign_in/sign_in_page.dart';
import 'package:online_learning/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: SignInPage),
      // MaterialRoute(page: NotesOverviewPage),
      // MaterialRoute(page: NoteFormPage, fullscreenDialog: true),
    ])
class $Router {}
