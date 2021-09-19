import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/controllers/choose_exercises_controller.dart';
import 'package:squeezed_app/features/workout/ui/controllers/search_exercise_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/exercise_option_tile.dart';
import 'package:squeezed_app/features/workout/ui/widgets/muscle_filters.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_divider.dart';
import 'package:squeezed_app/widgets/custom_text_field.dart';

import '../../../app_router.gr.dart';

class ChooseExercisesPage extends StatefulWidget {
  ChooseExercisesPage({Key? key}) : super(key: key);

  @override
  _ChooseExercisesPageState createState() => _ChooseExercisesPageState();
}

class _ChooseExercisesPageState extends State<ChooseExercisesPage> {
  final _searchController = AppContainer.get<SearchExerciseController>();
  final _chooseExercisesController = AppContainer.get<ChooseExercisesController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => AppScaffold(
        title: _chooseExercisesController.pageTitle,
        hasPadding: false,
        body: Column(
          children: [
            _buildSearchTextField(),
            const SizedBox(height: 10),
            _buildMuscleFilterRow(),
            const SizedBox(height: 10),
            _buildExercisesOrEmptyWarning(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: CustomTextField(
        prefixIcon: const Icon(Icons.search),
        onChanged: _searchController.searchExercise,
      ),
    );
  }

  Widget _buildMuscleFilterRow() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 50),
      child: MuscleFilters(),
    );
  }

  Widget _buildExercisesOrEmptyWarning() {
    return Expanded(
      child: Observer(
        builder: (_) => _searchController.matchedExercises.isEmpty ? _buildNoExerciseFound() : _buildExerciseList(),
      ),
    );
  }

  Widget _buildNoExerciseFound() {
    return const Center(
      child: Text(
        'Nenhum exercício encontrado',
        style: const TextStyle(color: AppColors.grey),
      ),
    );
  }

  Widget _buildExerciseList() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      itemCount: _searchController.matchedExercises.length,
      separatorBuilder: (_, __) => const CustomDivider(),
      itemBuilder: (context, index) => ExerciseOptionTile(
        _searchController.matchedExercises[index],
        onTap: _resolveExerciseTileTap,
      ),
    );
  }

  Future<void> _resolveExerciseTileTap(ExerciseDetails exercise) async {
    final result = await AutoRouter.of(context).push<ExercisePlan>(ExerciseDetailsRoute(exercise: exercise));
    if (result != null) {
      _chooseExercisesController.addExercise(result);
    }
  }
}
