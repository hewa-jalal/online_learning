import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'features/user/presentation/pages/app_widget.dart';
import 'package:online_learning/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize();
  // await di.init();
  di.configureInjection('prod');
  await Firebase.initializeApp();
  runApp(MyApp());
}
