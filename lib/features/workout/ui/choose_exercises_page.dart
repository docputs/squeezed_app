import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:squeezed_app/features/workout/ui/controllers/search_exercise_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/exercise_option_tile.dart';
import 'package:squeezed_app/features/workout/ui/widgets/muscle_filters.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_divider.dart';
import 'package:squeezed_app/widgets/custom_text_field.dart';

class ChooseExercisesPage extends StatelessWidget {
  final searchController = AppContainer.get<SearchExerciseController>();

  ChooseExercisesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Nenhum exercício selecionado',
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
    );
  }

  Widget _buildSearchTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: CustomTextField(
        prefixIcon: const Icon(Icons.search),
        onChanged: searchController.searchExercise,
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
        builder: (_) => searchController.matchedExercises.isEmpty ? _buildNoExerciseFound() : _buildExerciseList(),
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
      itemBuilder: (context, index) => ExerciseOptionTile(searchController.matchedExercises[index]),
      itemCount: searchController.matchedExercises.length,
      separatorBuilder: (_, __) => const CustomDivider(),
    );
  }
}
