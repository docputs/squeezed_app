import 'package:get_it/get_it.dart';

class AppContainer {
  static final getIt = GetIt.instance;

  static T get<T extends Object>() => getIt<T>();
}
