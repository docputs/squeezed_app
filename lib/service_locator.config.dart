// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.gr.dart' as _i3;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i13;
import 'features/auth/domain/repositories/auth_repository.dart' as _i12;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i15;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i16;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i18;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i19;
import 'features/splash/ui/controllers/splash_controller.dart' as _i20;
import 'features/workout/ui/controllers/choose_exercises_controller.dart'
    as _i14;
import 'features/workout/ui/controllers/create_workout_controller.dart' as _i4;
import 'features/workout/ui/controllers/exercise_plan_controller.dart' as _i5;
import 'features/workout/ui/controllers/review_workout_plan_controller.dart'
    as _i8;
import 'features/workout/ui/controllers/search_exercise_controller.dart' as _i9;
import 'features/workout/ui/controllers/workout_page_controller.dart' as _i10;
import 'features/workout/ui/controllers/workout_plan_controller.dart' as _i11;
import 'service_locator.dart' as _i21;
import 'shared/controllers/auth_controller.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
  gh.lazySingleton<_i4.CreateWorkoutController>(
      () => _i4.CreateWorkoutController());
  gh.factory<_i5.ExercisePlanController>(() => _i5.ExercisePlanController());
  gh.lazySingleton<_i6.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i8.ReviewWorkoutPlanController>(
      () => _i8.ReviewWorkoutPlanController());
  gh.lazySingleton<_i9.SearchExerciseController>(
      () => _i9.SearchExerciseController());
  gh.lazySingleton<_i10.WorkoutPageController>(
      () => _i10.WorkoutPageController());
  gh.lazySingleton<_i11.WorkoutPlanController>(
      () => _i11.WorkoutPlanController(get<_i4.CreateWorkoutController>()));
  gh.lazySingleton<_i12.AuthRepository>(
      () => _i13.AuthRepositoryImpl(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i14.ChooseExercisesController>(
      () => _i14.ChooseExercisesController(get<_i4.CreateWorkoutController>()));
  gh.lazySingleton<_i15.SignInUser>(
      () => _i15.SignInUser(get<_i12.AuthRepository>()));
  gh.lazySingleton<_i16.SignUpUser>(
      () => _i16.SignUpUser(get<_i12.AuthRepository>()));
  gh.lazySingleton<_i17.AuthController>(() =>
      _i17.AuthController(get<_i12.AuthRepository>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i18.SignInController>(() =>
      _i18.SignInController(get<_i15.SignInUser>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i19.SignUpController>(
      () => _i19.SignUpController(get<_i16.SignUpUser>()));
  gh.lazySingleton<_i20.SplashController>(
      () => _i20.SplashController(get<_i17.AuthController>()));
  return get;
}

class _$RegisterModule extends _i21.RegisterModule {}
