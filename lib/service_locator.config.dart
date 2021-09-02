// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.gr.dart' as _i3;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i8;
import 'features/auth/domain/repositories/auth_repository.dart' as _i7;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i9;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i10;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i12;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i13;
import 'features/splash/ui/controllers/splash_controller.dart' as _i14;
import 'features/workout/ui/controllers/workout_page_controller.dart' as _i6;
import 'service_locator.dart' as _i15;
import 'shared/controllers/auth_controller.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
  gh.lazySingleton<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i6.WorkoutPageController>(
      () => _i6.WorkoutPageController());
  gh.lazySingleton<_i7.AuthRepository>(
      () => _i8.AuthRepositoryImpl(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i9.SignInUser>(
      () => _i9.SignInUser(get<_i7.AuthRepository>()));
  gh.lazySingleton<_i10.SignUpUser>(
      () => _i10.SignUpUser(get<_i7.AuthRepository>()));
  gh.lazySingleton<_i11.AuthController>(() =>
      _i11.AuthController(get<_i7.AuthRepository>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i12.SignInController>(
      () => _i12.SignInController(get<_i9.SignInUser>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i13.SignUpController>(
      () => _i13.SignUpController(get<_i10.SignUpUser>()));
  gh.lazySingleton<_i14.SplashController>(
      () => _i14.SplashController(get<_i11.AuthController>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
