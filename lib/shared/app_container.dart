import 'package:get_it/get_it.dart';

class AppContainer {
  const AppContainer._();

  static final getIt = GetIt.instance;

  static T get<T extends Object>() => getIt<T>();
}
