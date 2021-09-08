// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.gr.dart' as _i3;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i9;
import 'features/auth/domain/repositories/auth_repository.dart' as _i8;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i10;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i11;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i13;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i14;
import 'features/splash/ui/controllers/splash_controller.dart' as _i15;
import 'features/workout/ui/controllers/create_workout_controller.dart' as _i4;
import 'features/workout/ui/controllers/workout_page_controller.dart' as _i7;
import 'service_locator.dart' as _i16;
import 'shared/controllers/auth_controller.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
  gh.lazySingleton<_i4.CreateWorkoutController>(
      () => _i4.CreateWorkoutController());
  gh.lazySingleton<_i5.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i7.WorkoutPageController>(
      () => _i7.WorkoutPageController());
  gh.lazySingleton<_i8.AuthRepository>(
      () => _i9.AuthRepositoryImpl(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i10.SignInUser>(
      () => _i10.SignInUser(get<_i8.AuthRepository>()));
  gh.lazySingleton<_i11.SignUpUser>(
      () => _i11.SignUpUser(get<_i8.AuthRepository>()));
  gh.lazySingleton<_i12.AuthController>(() =>
      _i12.AuthController(get<_i8.AuthRepository>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i13.SignInController>(() =>
      _i13.SignInController(get<_i10.SignInUser>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i14.SignUpController>(
      () => _i14.SignUpController(get<_i11.SignUpUser>()));
  gh.lazySingleton<_i15.SplashController>(
      () => _i15.SplashController(get<_i12.AuthController>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
