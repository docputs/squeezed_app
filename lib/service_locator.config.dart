// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.gr.dart' as _i3;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i12;
import 'features/auth/domain/repositories/auth_repository.dart' as _i11;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i14;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i15;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i19;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i20;
import 'features/splash/ui/controllers/splash_controller.dart' as _i21;
import 'features/workout/data/repositories/workout_plan_repository_impl.dart'
    as _i10;
import 'features/workout/domain/repositories/workout_plan_repository.dart'
    as _i9;
import 'features/workout/domain/usecases/create_workout_plan.dart' as _i13;
import 'features/workout/ui/controllers/choose_exercises_controller.dart'
    as _i23;
import 'features/workout/ui/controllers/create_workout_controller.dart' as _i17;
import 'features/workout/ui/controllers/exercise_plan_controller.dart' as _i4;
import 'features/workout/ui/controllers/review_workout_plan_controller.dart'
    as _i18;
import 'features/workout/ui/controllers/search_exercise_controller.dart' as _i7;
import 'features/workout/ui/controllers/workout_page_controller.dart' as _i8;
import 'features/workout/ui/controllers/workout_plan_controller.dart' as _i22;
import 'service_locator.dart' as _i24;
import 'shared/controllers/auth_controller.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
  gh.factory<_i4.ExercisePlanController>(() => _i4.ExercisePlanController());
  gh.lazySingleton<_i5.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i7.SearchExerciseController>(
      () => _i7.SearchExerciseController());
  gh.lazySingleton<_i8.WorkoutPageController>(
      () => _i8.WorkoutPageController());
  gh.lazySingleton<_i9.WorkoutPlanRepository>(() =>
      _i10.WorkoutPlanRepositoryImpl(
          get<_i6.FirebaseFirestore>(), get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i11.AuthRepository>(
      () => _i12.AuthRepositoryImpl(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i13.CreateWorkoutPlan>(
      () => _i13.CreateWorkoutPlan(get<_i9.WorkoutPlanRepository>()));
  gh.lazySingleton<_i14.SignInUser>(
      () => _i14.SignInUser(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i15.SignUpUser>(
      () => _i15.SignUpUser(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i16.AuthController>(() =>
      _i16.AuthController(get<_i11.AuthRepository>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i17.CreateWorkoutController>(
      () => _i17.CreateWorkoutController(get<_i13.CreateWorkoutPlan>()));
  gh.lazySingleton<_i18.ReviewWorkoutPlanController>(() =>
      _i18.ReviewWorkoutPlanController(get<_i17.CreateWorkoutController>()));
  gh.lazySingleton<_i19.SignInController>(() =>
      _i19.SignInController(get<_i14.SignInUser>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i20.SignUpController>(
      () => _i20.SignUpController(get<_i15.SignUpUser>()));
  gh.lazySingleton<_i21.SplashController>(
      () => _i21.SplashController(get<_i16.AuthController>()));
  gh.lazySingleton<_i22.WorkoutPlanController>(() => _i22.WorkoutPlanController(
      get<_i17.CreateWorkoutController>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i23.ChooseExercisesController>(() =>
      _i23.ChooseExercisesController(get<_i17.CreateWorkoutController>()));
  return get;
}

class _$RegisterModule extends _i24.RegisterModule {}
