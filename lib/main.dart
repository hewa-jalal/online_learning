import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_devtools/flutter_bloc_devtools.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'bloc_observer.dart';
import 'features/user/presentation/pages/app_widget.dart';
import 'package:online_learning/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await FlutterDownloader.initialize();
  Bloc.observer = AppBlocObserver();
  // await di.init();
  // final observer = RemoteDevToolsObserver('192.168.1.7:8000');
  // await observer.connect();
  // Bloc.observer = observer;

  di.configureInjection();
  await Firebase.initializeApp();
  runApp(MyApp());
}
