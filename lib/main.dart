import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'bloc_observer.dart';
import 'features/user/presentation/pages/app_widget.dart';
import 'package:online_learning/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize();
  Bloc.observer = TickerBlocObserver();
  // await di.init();
  di.configureInjection();
  await Firebase.initializeApp();
  runApp(MyApp());
}
