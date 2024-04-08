import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flevourssetup/ui/myapp.dart';
import 'package:flutter/material.dart';

import 'env.dart';

void main() async {
  AppEnvironment.setUpEnv(Environment.staging);
  await Firebase.initializeApp(
      options: Platform.isAndroid ? android : iOS,
      name: 'flevourssetup');
  runApp(const MyApp());
}

const FirebaseOptions android = FirebaseOptions(
  apiKey: 'AIzaSyADw6EgpCWqe8qaBNbAHxgXRcjB-RVaVuU',
  appId: '1:133227485400:android:6f1649d7f63b949658dfad',
  projectId: 'flutterflavors-5d482',
  messagingSenderId: '133227485400',
);

const FirebaseOptions iOS = FirebaseOptions(
  apiKey: 'AIzaSyADw6EgpCWqe8qaBNbAHxgXRcjB-RVaVuU',
  appId: '1:133227485400:ios:201435f27689e93758dfad',
  projectId: 'flutterflavors-5d482',
  messagingSenderId: '133227485400',
);
