// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.gr.dart' as _i3;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i12;
import 'features/auth/domain/repositories/auth_repository.dart' as _i11;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i13;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i14;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i16;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i17;
import 'features/splash/ui/controllers/splash_controller.dart' as _i18;
import 'features/workout/ui/controllers/choose_exercises_controller.dart'
    as _i4;
import 'features/workout/ui/controllers/create_workout_controller.dart' as _i5;
import 'features/workout/ui/controllers/exercise_details_controller.dart'
    as _i6;
import 'features/workout/ui/controllers/search_exercise_controller.dart' as _i9;
import 'features/workout/ui/controllers/workout_page_controller.dart' as _i10;
import 'service_locator.dart' as _i19;
import 'shared/controllers/auth_controller.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
  gh.lazySingleton<_i4.ChooseExercisesController>(
      () => _i4.ChooseExercisesController());
  gh.lazySingleton<_i5.CreateWorkoutController>(
      () => _i5.CreateWorkoutController());
  gh.lazySingleton<_i6.ExerciseDetailsController>(
      () => _i6.ExerciseDetailsController());
  gh.lazySingleton<_i7.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i8.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i9.SearchExerciseController>(
      () => _i9.SearchExerciseController());
  gh.lazySingleton<_i10.WorkoutPageController>(
      () => _i10.WorkoutPageController());
  gh.lazySingleton<_i11.AuthRepository>(
      () => _i12.AuthRepositoryImpl(get<_i7.FirebaseAuth>()));
  gh.lazySingleton<_i13.SignInUser>(
      () => _i13.SignInUser(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i14.SignUpUser>(
      () => _i14.SignUpUser(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i15.AuthController>(() =>
      _i15.AuthController(get<_i11.AuthRepository>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i16.SignInController>(() =>
      _i16.SignInController(get<_i13.SignInUser>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i17.SignUpController>(
      () => _i17.SignUpController(get<_i14.SignUpUser>()));
  gh.lazySingleton<_i18.SplashController>(
      () => _i18.SplashController(get<_i15.AuthController>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
