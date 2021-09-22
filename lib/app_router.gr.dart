// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'features/auth/ui/sign_in/pages/sign_in_page.dart' as _i4;
import 'features/auth/ui/sign_up/pages/sign_up_page.dart' as _i5;
import 'features/home/ui/home_page.dart' as _i7;
import 'features/settings/settings_page.dart' as _i15;
import 'features/splash/ui/splash_page.dart' as _i3;
import 'features/statistics/statistics_page.dart' as _i14;
import 'features/workout/domain/entities/exercise_details.dart' as _i16;
import 'features/workout/domain/entities/exercise_plan.dart' as _i11;
import 'features/workout/ui/choose_exercises_page.dart' as _i10;
import 'features/workout/ui/create_workout_page.dart' as _i9;
import 'features/workout/ui/exercise_plan_page.dart' as _i12;
import 'features/workout/ui/review_workout_plan_page.dart' as _i13;
import 'features/workout/ui/view_models/create_workout_view_model.dart' as _i17;
import 'features/workout/ui/workout_page.dart' as _i8;
import 'widgets/bottom_navigation_manager.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SplashRouteArgs>(
              orElse: () => const SplashRouteArgs());
          return _i3.SplashPage(key: args.key);
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignInRouteArgs>(
              orElse: () => const SignInRouteArgs());
          return _i4.SignInPage(key: args.key);
        }),
    SignUpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignUpRouteArgs>(
              orElse: () => const SignUpRouteArgs());
          return _i5.SignUpPage(key: args.key);
        }),
    BottomNavigationManager.name: (routeData) => _i1.MaterialPageX<dynamic>(
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
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.HomePage();
        }),
    WorkoutRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<WorkoutRouteArgs>(
              orElse: () => const WorkoutRouteArgs());
          return _i8.WorkoutPage(key: args.key);
        }),
    CreateWorkoutRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreateWorkoutRouteArgs>(
              orElse: () => const CreateWorkoutRouteArgs());
          return _i9.CreateWorkoutPage(key: args.key);
        }),
    ChooseExercisesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChooseExercisesRouteArgs>(
              orElse: () => const ChooseExercisesRouteArgs());
          return _i10.ChooseExercisesPage(key: args.key);
        }),
    ExercisePlanRoute.name: (routeData) => _i1.MaterialPageX<_i11.ExercisePlan>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ExercisePlanRouteArgs>(
              orElse: () => const ExercisePlanRouteArgs());
          return _i12.ExercisePlanPage(
              key: args.key,
              exerciseDetails: args.exerciseDetails,
              editableExercise: args.editableExercise);
        }),
    ReviewWorkoutPlanRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ReviewWorkoutPlanRouteArgs>();
          return _i13.ReviewWorkoutPlanPage(args.workout, key: args.key);
        }),
    StatisticsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.StatisticsPage();
        }),
    SettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i15.SettingsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(BottomNavigationManager.name,
            path: '/bottom-navigation-manager',
            children: [
              _i1.RouteConfig(HomeTab.name,
                  path: '',
                  children: [_i1.RouteConfig(HomeRoute.name, path: '')]),
              _i1.RouteConfig(WorkoutTab.name,
                  path: 'empty-router-page',
                  children: [
                    _i1.RouteConfig(WorkoutRoute.name, path: ''),
                    _i1.RouteConfig(CreateWorkoutRoute.name,
                        path: 'create-workout-page'),
                    _i1.RouteConfig(ChooseExercisesRoute.name,
                        path: 'choose-exercises-page'),
                    _i1.RouteConfig(ExercisePlanRoute.name,
                        path: 'exercise-plan-page'),
                    _i1.RouteConfig(ReviewWorkoutPlanRoute.name,
                        path: 'review-workout-plan-page')
                  ]),
              _i1.RouteConfig(StatisticsTab.name,
                  path: 'empty-router-page',
                  children: [_i1.RouteConfig(StatisticsRoute.name, path: '')]),
              _i1.RouteConfig(SettingsTab.name,
                  path: 'empty-router-page',
                  children: [_i1.RouteConfig(SettingsRoute.name, path: '')])
            ])
      ];
}

class SplashRoute extends _i1.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i2.Key? key})
      : super(name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i2.Key? key;
}

class SignInRoute extends _i1.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i2.Key? key})
      : super(name, path: '/sign-in-page', args: SignInRouteArgs(key: key));

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i2.Key? key;
}

class SignUpRoute extends _i1.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i2.Key? key})
      : super(name, path: '/sign-up-page', args: SignUpRouteArgs(key: key));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i2.Key? key;
}

class BottomNavigationManager extends _i1.PageRouteInfo {
  const BottomNavigationManager({List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/bottom-navigation-manager', initialChildren: children);

  static const String name = 'BottomNavigationManager';
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

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class WorkoutRoute extends _i1.PageRouteInfo<WorkoutRouteArgs> {
  WorkoutRoute({_i2.Key? key})
      : super(name, path: '', args: WorkoutRouteArgs(key: key));

  static const String name = 'WorkoutRoute';
}

class WorkoutRouteArgs {
  const WorkoutRouteArgs({this.key});

  final _i2.Key? key;
}

class CreateWorkoutRoute extends _i1.PageRouteInfo<CreateWorkoutRouteArgs> {
  CreateWorkoutRoute({_i2.Key? key})
      : super(name,
            path: 'create-workout-page',
            args: CreateWorkoutRouteArgs(key: key));

  static const String name = 'CreateWorkoutRoute';
}

class CreateWorkoutRouteArgs {
  const CreateWorkoutRouteArgs({this.key});

  final _i2.Key? key;
}

class ChooseExercisesRoute extends _i1.PageRouteInfo<ChooseExercisesRouteArgs> {
  ChooseExercisesRoute({_i2.Key? key})
      : super(name,
            path: 'choose-exercises-page',
            args: ChooseExercisesRouteArgs(key: key));

  static const String name = 'ChooseExercisesRoute';
}

class ChooseExercisesRouteArgs {
  const ChooseExercisesRouteArgs({this.key});

  final _i2.Key? key;
}

class ExercisePlanRoute extends _i1.PageRouteInfo<ExercisePlanRouteArgs> {
  ExercisePlanRoute(
      {_i2.Key? key,
      _i16.ExerciseDetails? exerciseDetails,
      _i11.ExercisePlan? editableExercise})
      : super(name,
            path: 'exercise-plan-page',
            args: ExercisePlanRouteArgs(
                key: key,
                exerciseDetails: exerciseDetails,
                editableExercise: editableExercise));

  static const String name = 'ExercisePlanRoute';
}

class ExercisePlanRouteArgs {
  const ExercisePlanRouteArgs(
      {this.key, this.exerciseDetails, this.editableExercise});

  final _i2.Key? key;

  final _i16.ExerciseDetails? exerciseDetails;

  final _i11.ExercisePlan? editableExercise;
}

class ReviewWorkoutPlanRoute
    extends _i1.PageRouteInfo<ReviewWorkoutPlanRouteArgs> {
  ReviewWorkoutPlanRoute(
      {required _i17.CreateWorkoutViewModel workout, _i2.Key? key})
      : super(name,
            path: 'review-workout-plan-page',
            args: ReviewWorkoutPlanRouteArgs(workout: workout, key: key));

  static const String name = 'ReviewWorkoutPlanRoute';
}

class ReviewWorkoutPlanRouteArgs {
  const ReviewWorkoutPlanRouteArgs({required this.workout, this.key});

  final _i17.CreateWorkoutViewModel workout;

  final _i2.Key? key;
}

class StatisticsRoute extends _i1.PageRouteInfo {
  const StatisticsRoute() : super(name, path: '');

  static const String name = 'StatisticsRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
