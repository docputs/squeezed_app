import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/android_app.dart';
import 'package:squeezed_app/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await Firebase.initializeApp();
  runApp(AndroidApp());
}
