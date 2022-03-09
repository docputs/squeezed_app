// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i14;

import 'features/auth/ui/sign_in/pages/sign_in_page.dart' as _i2;
import 'features/auth/ui/sign_up/pages/sign_up_page.dart' as _i3;
import 'features/home/ui/home_page.dart' as _i6;
import 'features/settings/settings_page.dart' as _i13;
import 'features/splash/ui/splash_page.dart' as _i1;
import 'features/statistics/statistics_page.dart' as _i12;
import 'features/workout/domain/entities/exercise_details.dart' as _i16;
import 'features/workout/domain/entities/exercise_plan.dart' as _i15;
import 'features/workout/ui/choose_exercises_page.dart' as _i9;
import 'features/workout/ui/create_workout_page.dart' as _i8;
import 'features/workout/ui/exercise_plan_page.dart' as _i10;
import 'features/workout/ui/review_workout_plan_page.dart' as _i11;
import 'features/workout/ui/view_models/create_workout_view_model.dart' as _i17;
import 'features/workout/ui/workout_page.dart' as _i7;
import 'widgets/bottom_navigation_manager.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage(key: args.key));
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage(key: args.key));
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignUpPage(key: args.key));
    },
    BottomNavigationManager.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BottomNavigationManager());
    },
    HomeTab.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    WorkoutTab.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    StatisticsTab.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    SettingsTab.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    WorkoutRoute.name: (routeData) {
      final args = routeData.argsAs<WorkoutRouteArgs>(
          orElse: () => const WorkoutRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.WorkoutPage(key: args.key));
    },
    CreateWorkoutRoute.name: (routeData) {
      final args = routeData.argsAs<CreateWorkoutRouteArgs>(
          orElse: () => const CreateWorkoutRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.CreateWorkoutPage(key: args.key));
    },
    ChooseExercisesRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseExercisesRouteArgs>(
          orElse: () => const ChooseExercisesRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.ChooseExercisesPage(key: args.key));
    },
    ExercisePlanRoute.name: (routeData) {
      final args = routeData.argsAs<ExercisePlanRouteArgs>(
          orElse: () => const ExercisePlanRouteArgs());
      return _i5.MaterialPageX<_i15.ExercisePlan>(
          routeData: routeData,
          child: _i10.ExercisePlanPage(
              key: args.key,
              exerciseDetails: args.exerciseDetails,
              editableExercise: args.editableExercise));
    },
    ReviewWorkoutPlanRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewWorkoutPlanRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ReviewWorkoutPlanPage(args.workout, key: args.key));
    },
    StatisticsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.StatisticsPage());
    },
    SettingsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.SettingsPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i5.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i5.RouteConfig(BottomNavigationManager.name,
            path: '/bottom-navigation-manager',
            children: [
              _i5.RouteConfig(HomeTab.name,
                  path: '',
                  parent: BottomNavigationManager.name,
                  children: [
                    _i5.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeTab.name)
                  ]),
              _i5.RouteConfig(WorkoutTab.name,
                  path: 'empty-router-page',
                  parent: BottomNavigationManager.name,
                  children: [
                    _i5.RouteConfig(WorkoutRoute.name,
                        path: '', parent: WorkoutTab.name),
                    _i5.RouteConfig(CreateWorkoutRoute.name,
                        path: 'create-workout-page', parent: WorkoutTab.name),
                    _i5.RouteConfig(ChooseExercisesRoute.name,
                        path: 'choose-exercises-page', parent: WorkoutTab.name),
                    _i5.RouteConfig(ExercisePlanRoute.name,
                        path: 'exercise-plan-page', parent: WorkoutTab.name),
                    _i5.RouteConfig(ReviewWorkoutPlanRoute.name,
                        path: 'review-workout-plan-page',
                        parent: WorkoutTab.name)
                  ]),
              _i5.RouteConfig(StatisticsTab.name,
                  path: 'empty-router-page',
                  parent: BottomNavigationManager.name,
                  children: [
                    _i5.RouteConfig(StatisticsRoute.name,
                        path: '', parent: StatisticsTab.name)
                  ]),
              _i5.RouteConfig(SettingsTab.name,
                  path: 'empty-router-page',
                  parent: BottomNavigationManager.name,
                  children: [
                    _i5.RouteConfig(SettingsRoute.name,
                        path: '', parent: SettingsTab.name)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i14.Key? key})
      : super(SplashRoute.name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i14.Key? key})
      : super(SignInRoute.name,
            path: '/sign-in-page', args: SignInRouteArgs(key: key));

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i14.Key? key})
      : super(SignUpRoute.name,
            path: '/sign-up-page', args: SignUpRouteArgs(key: key));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.BottomNavigationManager]
class BottomNavigationManager extends _i5.PageRouteInfo<void> {
  const BottomNavigationManager({List<_i5.PageRouteInfo>? children})
      : super(BottomNavigationManager.name,
            path: '/bottom-navigation-manager', initialChildren: children);

  static const String name = 'BottomNavigationManager';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HomeTab extends _i5.PageRouteInfo<void> {
  const HomeTab({List<_i5.PageRouteInfo>? children})
      : super(HomeTab.name, path: '', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class WorkoutTab extends _i5.PageRouteInfo<void> {
  const WorkoutTab({List<_i5.PageRouteInfo>? children})
      : super(WorkoutTab.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'WorkoutTab';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class StatisticsTab extends _i5.PageRouteInfo<void> {
  const StatisticsTab({List<_i5.PageRouteInfo>? children})
      : super(StatisticsTab.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'StatisticsTab';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class SettingsTab extends _i5.PageRouteInfo<void> {
  const SettingsTab({List<_i5.PageRouteInfo>? children})
      : super(SettingsTab.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'SettingsTab';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.WorkoutPage]
class WorkoutRoute extends _i5.PageRouteInfo<WorkoutRouteArgs> {
  WorkoutRoute({_i14.Key? key})
      : super(WorkoutRoute.name, path: '', args: WorkoutRouteArgs(key: key));

  static const String name = 'WorkoutRoute';
}

class WorkoutRouteArgs {
  const WorkoutRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'WorkoutRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.CreateWorkoutPage]
class CreateWorkoutRoute extends _i5.PageRouteInfo<CreateWorkoutRouteArgs> {
  CreateWorkoutRoute({_i14.Key? key})
      : super(CreateWorkoutRoute.name,
            path: 'create-workout-page',
            args: CreateWorkoutRouteArgs(key: key));

  static const String name = 'CreateWorkoutRoute';
}

class CreateWorkoutRouteArgs {
  const CreateWorkoutRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'CreateWorkoutRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.ChooseExercisesPage]
class ChooseExercisesRoute extends _i5.PageRouteInfo<ChooseExercisesRouteArgs> {
  ChooseExercisesRoute({_i14.Key? key})
      : super(ChooseExercisesRoute.name,
            path: 'choose-exercises-page',
            args: ChooseExercisesRouteArgs(key: key));

  static const String name = 'ChooseExercisesRoute';
}

class ChooseExercisesRouteArgs {
  const ChooseExercisesRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ChooseExercisesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ExercisePlanPage]
class ExercisePlanRoute extends _i5.PageRouteInfo<ExercisePlanRouteArgs> {
  ExercisePlanRoute(
      {_i14.Key? key,
      _i16.ExerciseDetails? exerciseDetails,
      _i15.ExercisePlan? editableExercise})
      : super(ExercisePlanRoute.name,
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

  final _i14.Key? key;

  final _i16.ExerciseDetails? exerciseDetails;

  final _i15.ExercisePlan? editableExercise;

  @override
  String toString() {
    return 'ExercisePlanRouteArgs{key: $key, exerciseDetails: $exerciseDetails, editableExercise: $editableExercise}';
  }
}

/// generated route for
/// [_i11.ReviewWorkoutPlanPage]
class ReviewWorkoutPlanRoute
    extends _i5.PageRouteInfo<ReviewWorkoutPlanRouteArgs> {
  ReviewWorkoutPlanRoute(
      {required _i17.CreateWorkoutViewModel workout, _i14.Key? key})
      : super(ReviewWorkoutPlanRoute.name,
            path: 'review-workout-plan-page',
            args: ReviewWorkoutPlanRouteArgs(workout: workout, key: key));

  static const String name = 'ReviewWorkoutPlanRoute';
}

class ReviewWorkoutPlanRouteArgs {
  const ReviewWorkoutPlanRouteArgs({required this.workout, this.key});

  final _i17.CreateWorkoutViewModel workout;

  final _i14.Key? key;

  @override
  String toString() {
    return 'ReviewWorkoutPlanRouteArgs{workout: $workout, key: $key}';
  }
}

/// generated route for
/// [_i12.StatisticsPage]
class StatisticsRoute extends _i5.PageRouteInfo<void> {
  const StatisticsRoute() : super(StatisticsRoute.name, path: '');

  static const String name = 'StatisticsRoute';
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '');

  static const String name = 'SettingsRoute';
}
