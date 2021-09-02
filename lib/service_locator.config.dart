// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.gr.dart' as _i3;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i7;
import 'features/auth/domain/repositories/auth_repository.dart' as _i6;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i8;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i9;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i11;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i12;
import 'features/splash/ui/controllers/splash_controller.dart' as _i13;
import 'service_locator.dart' as _i14;
import 'shared/controllers/auth_controller.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.AuthRepository>(
      () => _i7.AuthRepositoryImpl(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i8.SignInUser>(
      () => _i8.SignInUser(get<_i6.AuthRepository>()));
  gh.lazySingleton<_i9.SignUpUser>(
      () => _i9.SignUpUser(get<_i6.AuthRepository>()));
  gh.lazySingleton<_i10.AuthController>(() =>
      _i10.AuthController(get<_i6.AuthRepository>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i11.SignInController>(
      () => _i11.SignInController(get<_i8.SignInUser>(), get<_i3.AppRouter>()));
  gh.lazySingleton<_i12.SignUpController>(
      () => _i12.SignUpController(get<_i9.SignUpUser>()));
  gh.lazySingleton<_i13.SplashController>(
      () => _i13.SplashController(get<_i10.AuthController>()));
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}
