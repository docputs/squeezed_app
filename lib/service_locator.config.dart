// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/auth/data/repositories/auth_repository_impl.dart' as _i6;
import 'features/auth/domain/repositories/auth_repository.dart' as _i5;
import 'features/auth/domain/usecases/sign_in_user.dart' as _i7;
import 'features/auth/domain/usecases/sign_up_user.dart' as _i8;
import 'features/auth/ui/sign_in/controllers/sign_in_controller.dart' as _i9;
import 'features/auth/ui/sign_up/controller/sign_up_controller.dart' as _i10;
import 'service_locator.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i5.AuthRepository>(
      () => _i6.AuthRepositoryImpl(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i7.SignInUser>(
      () => _i7.SignInUser(get<_i5.AuthRepository>()));
  gh.lazySingleton<_i8.SignUpUser>(
      () => _i8.SignUpUser(get<_i5.AuthRepository>()));
  gh.lazySingleton<_i9.SignInController>(
      () => _i9.SignInController(get<_i7.SignInUser>()));
  gh.lazySingleton<_i10.SignUpController>(
      () => _i10.SignUpController(get<_i8.SignUpUser>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
