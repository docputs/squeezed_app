// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'features/auth/ui/sign_in/pages/sign_in_page.dart' as _i4;
import 'features/auth/ui/sign_up/pages/sign_up_page.dart' as _i5;
import 'features/home/ui/home_page.dart' as _i7;
import 'features/settings/settings_page.dart' as _i13;
import 'features/splash/ui/splash_page.dart' as _i3;
import 'features/statistics/statistics_page.dart' as _i12;
import 'features/workout/domain/entities/exercise.dart' as _i14;
import 'features/workout/ui/choose_exercises_page.dart' as _i10;
import 'features/workout/ui/create_workout_page.dart' as _i9;
import 'features/workout/ui/exercise_details_page.dart' as _i11;
import 'features/workout/ui/workout_page.dart' as _i8;
import 'widgets/bottom_navigation_manager.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SplashPageRouteArgs>(
              orElse: () => const SplashPageRouteArgs());
          return _i3.SplashPage(key: args.key);
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignInPageRouteArgs>(
              orElse: () => const SignInPageRouteArgs());
          return _i4.SignInPage(key: args.key);
        }),
    SignUpPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignUpPageRouteArgs>(
              orElse: () => const SignUpPageRouteArgs());
          return _i5.SignUpPage(key: args.key);
        }),
    BottomNavigationManagerRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return const _i6.BottomNavigationManager();
            }),
    HomeTab.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    WorkoutTab.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    StatisticsTab.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    SettingsTab.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.HomePage();
        }),
    WorkoutPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<WorkoutPageRouteArgs>(
              orElse: () => const WorkoutPageRouteArgs());
          return _i8.WorkoutPage(key: args.key);
        }),
    CreateWorkoutPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreateWorkoutPageRouteArgs>(
              orElse: () => const CreateWorkoutPageRouteArgs());
          return _i9.CreateWorkoutPage(key: args.key);
        }),
    ChooseExercisesPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChooseExercisesPageRouteArgs>(
              orElse: () => const ChooseExercisesPageRouteArgs());
          return _i10.ChooseExercisesPage(key: args.key);
        }),
    ExerciseDetailsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ExerciseDetailsPageRouteArgs>();
          return _i11.ExerciseDetailsPage(args.exercise, key: args.key);
        }),
    StatisticsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.StatisticsPage();
        }),
    SettingsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.SettingsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(BottomNavigationManagerRoute.name,
            path: '/bottom-navigation-manager',
            children: [
              _i1.RouteConfig(HomeTab.name,
                  path: '',
                  children: [_i1.RouteConfig(HomePageRoute.name, path: '')]),
              _i1.RouteConfig(WorkoutTab.name,
                  path: 'empty-router-page',
                  children: [
                    _i1.RouteConfig(WorkoutPageRoute.name, path: ''),
                    _i1.RouteConfig(CreateWorkoutPageRoute.name,
                        path: 'create-workout-page'),
                    _i1.RouteConfig(ChooseExercisesPageRoute.name,
                        path: 'choose-exercises-page'),
                    _i1.RouteConfig(ExerciseDetailsPageRoute.name,
                        path: 'exercise-details-page')
                  ]),
              _i1.RouteConfig(StatisticsTab.name,
                  path: 'empty-router-page',
                  children: [
                    _i1.RouteConfig(StatisticsPageRoute.name, path: '')
                  ]),
              _i1.RouteConfig(SettingsTab.name,
                  path: 'empty-router-page',
                  children: [_i1.RouteConfig(SettingsPageRoute.name, path: '')])
            ])
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo<SplashPageRouteArgs> {
  SplashPageRoute({_i2.Key? key})
      : super(name, path: '/', args: SplashPageRouteArgs(key: key));

  static const String name = 'SplashPageRoute';
}

class SplashPageRouteArgs {
  const SplashPageRouteArgs({this.key});

  final _i2.Key? key;
}

class SignInPageRoute extends _i1.PageRouteInfo<SignInPageRouteArgs> {
  SignInPageRoute({_i2.Key? key})
      : super(name, path: '/sign-in-page', args: SignInPageRouteArgs(key: key));

  static const String name = 'SignInPageRoute';
}

class SignInPageRouteArgs {
  const SignInPageRouteArgs({this.key});

  final _i2.Key? key;
}

class SignUpPageRoute extends _i1.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i2.Key? key})
      : super(name, path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i2.Key? key;
}

class BottomNavigationManagerRoute extends _i1.PageRouteInfo {
  const BottomNavigationManagerRoute({List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/bottom-navigation-manager', initialChildren: children);

  static const String name = 'BottomNavigationManagerRoute';
}

class HomeTab extends _i1.PageRouteInfo {
  const HomeTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'HomeTab';
}

class WorkoutTab extends _i1.PageRouteInfo {
  const WorkoutTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'WorkoutTab';
}

class StatisticsTab extends _i1.PageRouteInfo {
  const StatisticsTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'StatisticsTab';
}

class SettingsTab extends _i1.PageRouteInfo {
  const SettingsTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'SettingsTab';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '');

  static const String name = 'HomePageRoute';
}

class WorkoutPageRoute extends _i1.PageRouteInfo<WorkoutPageRouteArgs> {
  WorkoutPageRoute({_i2.Key? key})
      : super(name, path: '', args: WorkoutPageRouteArgs(key: key));

  static const String name = 'WorkoutPageRoute';
}

class WorkoutPageRouteArgs {
  const WorkoutPageRouteArgs({this.key});

  final _i2.Key? key;
}

class CreateWorkoutPageRoute
    extends _i1.PageRouteInfo<CreateWorkoutPageRouteArgs> {
  CreateWorkoutPageRoute({_i2.Key? key})
      : super(name,
            path: 'create-workout-page',
            args: CreateWorkoutPageRouteArgs(key: key));

  static const String name = 'CreateWorkoutPageRoute';
}

class CreateWorkoutPageRouteArgs {
  const CreateWorkoutPageRouteArgs({this.key});

  final _i2.Key? key;
}

class ChooseExercisesPageRoute
    extends _i1.PageRouteInfo<ChooseExercisesPageRouteArgs> {
  ChooseExercisesPageRoute({_i2.Key? key})
      : super(name,
            path: 'choose-exercises-page',
            args: ChooseExercisesPageRouteArgs(key: key));

  static const String name = 'ChooseExercisesPageRoute';
}

class ChooseExercisesPageRouteArgs {
  const ChooseExercisesPageRouteArgs({this.key});

  final _i2.Key? key;
}

class ExerciseDetailsPageRoute
    extends _i1.PageRouteInfo<ExerciseDetailsPageRouteArgs> {
  ExerciseDetailsPageRoute({required _i14.Exercise exercise, _i2.Key? key})
      : super(name,
            path: 'exercise-details-page',
            args: ExerciseDetailsPageRouteArgs(exercise: exercise, key: key));

  static const String name = 'ExerciseDetailsPageRoute';
}

class ExerciseDetailsPageRouteArgs {
  const ExerciseDetailsPageRouteArgs({required this.exercise, this.key});

  final _i14.Exercise exercise;

  final _i2.Key? key;
}

class StatisticsPageRoute extends _i1.PageRouteInfo {
  const StatisticsPageRoute() : super(name, path: '');

  static const String name = 'StatisticsPageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: '');

  static const String name = 'SettingsPageRoute';
}
