// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.gr.dart' as _i3;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i10;
import 'features/auth/domain/repositories/auth_repository.dart' as _i9;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i11;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i12;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i14;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i15;
import 'features/splash/ui/controllers/splash_controller.dart' as _i16;
import 'features/workout/ui/controllers/create_workout_controller.dart' as _i4;
import 'features/workout/ui/controllers/search_exercise_controller.dart' as _i7;
import 'features/workout/ui/controllers/workout_page_controller.dart' as _i8;
import 'service_locator.dart' as _i17;
import 'shared/controllers/auth_controller.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.SearchExerciseController>(
      () => _i7.SearchExerciseController());
  gh.lazySingleton<_i8.WorkoutPageController>(
      () => _i8.WorkoutPageController());
  gh.lazySingleton<_i9.AuthRepository>(
      () => _i10.AuthRepositoryImpl(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i11.SignInUser>(
      () => _i11.SignInUser(get<_i9.AuthRepository>()));
  gh.lazySingleton<_i12.SignUpUser>(
      () => _i12.SignUpUser(get<_i9.AuthRepository>()));
  gh.lazySingleton<_i13.AuthController>(() =>
      _i13.AuthController(get<_i9.AuthRepository>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i14.SignInController>(() =>
      _i14.SignInController(get<_i11.SignInUser>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i15.SignUpController>(
      () => _i15.SignUpController(get<_i12.SignUpUser>()));
  gh.lazySingleton<_i16.SplashController>(
      () => _i16.SplashController(get<_i13.AuthController>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
