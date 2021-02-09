import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/user/presentation/pages/app_widget.dart';
import 'package:online_learning/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  await Firebase.initializeApp();
  runApp(MyApp());
}
