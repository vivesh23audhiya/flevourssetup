import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flevourssetup/ui/myapp.dart';
import 'package:flutter/material.dart';

import 'env.dart';

Future<void> main() async {
  AppEnvironment.setUpEnv(Environment.dev);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: Platform.isAndroid ? android : iOS,
      name: 'flevourssetupdev');
  runApp(const MyApp());
}

const FirebaseOptions android = FirebaseOptions(
  apiKey: 'AIzaSyADw6EgpCWqe8qaBNbAHxgXRcjB-RVaVuU',
  appId: '1:133227485400:android:26f3769c83a23faf58dfad',
  projectId: 'flutterflavors-5d482',
  messagingSenderId: '133227485400',
);
const FirebaseOptions iOS = FirebaseOptions(
  apiKey: 'AIzaSyADw6EgpCWqe8qaBNbAHxgXRcjB-RVaVuU',
  appId: '1:133227485400:ios:a22bc375ea4feb6e58dfad',
  projectId: 'flutterflavors-5d482',
  messagingSenderId: '133227485400',
);
