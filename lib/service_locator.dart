import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/shared/app_container.dart';

import 'service_locator.config.dart';

@InjectableInit()
Future<void> configureDependencies() async => await $initGetIt(AppContainer.getIt);

@module
abstract class RegisterModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
