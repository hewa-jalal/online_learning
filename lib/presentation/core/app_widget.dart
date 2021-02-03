import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning/application/auth/auth_bloc.dart';
import 'package:online_learning/injection.dart';
import 'package:online_learning/presentation/role/role_page.dart';
import 'package:online_learning/presentation/sign_in/sign_in_page.dart';
import 'package:online_learning/presentation/routes/router.gr.dart'
    as app_router;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          // we need to add an event as soon as possible so we use ..add()
          BlocProvider(
            create: (_) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
          )
        ],
        child: MaterialApp(
          // builder: ExtendedNavigator.builder<app_router.Router>(
          //     router: app_router.Router()),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ScreenUtilInit(child: SignInPage()),
        ),
      ),
    );
  }
}
