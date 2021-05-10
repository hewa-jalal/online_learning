import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'bloc_observer.dart';
import 'features/user/presentation/bloc/user_auth_bloc.dart';
import 'features/user/presentation/pages/app_widget.dart';
import 'injection.dart' as di;
import 'features/user/data/datasources/user_remote_data_source.dart';
import 'features/user/data/repositories/user_repository_impl.dart';
import 'features/user/domain/usecase/get_user.dart';
import 'features/user/domain/usecase/get_users.dart';
import 'features/user/domain/usecase/update_user_time.dart';
import 'features/user/domain/usecase/user_online_status.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize();
  Bloc.observer = AppBlocObserver();
  // await di.init();
  // final observer = RemoteDevToolsObserver('192.168.1.7:8000');
  // await observer.connect();
  // Bloc.observer = observer;

  await Firebase.initializeApp();
  await di.configureInjection();

  runApp(
    BlocProvider(
      create: (_) => UserAuthBloc(
        getUser: GetUser(UserRepositoryImpl(FirebaseUserRemoteDataSource())),
        getAllUsers:
            GetAllUsers(UserRepositoryImpl(FirebaseUserRemoteDataSource())),
        updateUserTime: UpdateUserTime(
          UserRepositoryImpl(FirebaseUserRemoteDataSource()),
        ),
        userOnlineStatus: UserOnlineStatus(
            UserRepositoryImpl(FirebaseUserRemoteDataSource())),
      ),
      child: MyApp(),
    ),
  );
}
