import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/controllers/choose_exercises_controller.dart';
import 'package:squeezed_app/features/workout/ui/controllers/search_exercise_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/exercise_option_tile.dart';
import 'package:squeezed_app/features/workout/ui/widgets/muscle_filters.dart';
import 'package:squeezed_app/features/workout/ui/widgets/custom_sliding_sheet_dialog.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/shared/res/messages.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:olympia_design/src/text_fields/custom_text_field.dart';

import '../../../app_router.gr.dart';

class ChooseExercisesPage extends StatefulWidget {
  ChooseExercisesPage({Key? key}) : super(key: key);

  @override
  _ChooseExercisesPageState createState() => _ChooseExercisesPageState();
}

class _ChooseExercisesPageState extends State<ChooseExercisesPage> {
  final _searchController = AppContainer.get<SearchExerciseController>();
  final _chooseController = AppContainer.get<ChooseExercisesController>();
  final _searchBarFocusNode = FocusNode();
  StackRouter? _router;

  void _unfocusSearchBar() => _searchBarFocusNode.unfocus();

  @override
  void didChangeDependencies() {
    _router = AutoRouter.of(context)..addListener(_unfocusSearchBar);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _searchBarFocusNode.unfocus();
      },
      child: AppScaffold(
        customTitle: _buildCustomTitle(),
        hasPadding: false,
        body: Column(
          children: [
            _buildSearchTextField(),
            const SizedBox(height: 10),
            _buildMuscleFilterRow(),
            const SizedBox(height: 10),
            const CustomDivider(color: AppColors.primaryLight),
            _buildExercisesOrEmptyWarning(),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTitle() {
    return Observer(
      builder: (_) => _chooseController.hasSelectedExercises
          ? GestureDetector(
              onTap: _handleCustomTitleTap,
              child: _buildPlainTitleText(),
            )
          : _buildPlainTitleText(),
    );
  }

  void _handleCustomTitleTap() {
    _unfocusSearchBar();
    showSlidingBottomSheet(context, builder: (_) => CustomSlidingSheetDialog());
  }

  Widget _buildPlainTitleText() {
    return Text(
      _chooseController.pageTitle,
      style: TextStyle(
        color: _chooseController.hasSelectedExercises ? AppColors.primary : Colors.black,
        decoration: _chooseController.hasSelectedExercises ? TextDecoration.underline : null,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Paddings.small),
      child: CustomTextField(
        prefixIcon: const Icon(Icons.search),
        onChanged: _searchController.searchExercise,
        focusNode: _searchBarFocusNode,
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
        Messages.chooseExercisesNoExerciseFound,
        style: const TextStyle(color: AppColors.grey),
      ),
    );
  }

  Widget _buildExerciseList() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: Paddings.small),
      itemCount: _searchController.matchedExercises.length,
      separatorBuilder: (_, __) => const CustomDivider(),
      itemBuilder: (context, index) => ExerciseOptionTile(
        _searchController.matchedExercises[index],
        onTap: _handleExerciseTileTap,
      ),
    );
  }

  Future<void> _handleExerciseTileTap(ExerciseDetails exercise) async {
    final result = await AutoRouter.of(context).push<ExercisePlan>(
      ExercisePlanRoute(exerciseDetails: exercise),
    );
    if (result != null) _chooseController.addExercise(result);
  }

  @override
  void dispose() {
    _router?.removeListener(_unfocusSearchBar);
    super.dispose();
  }
}
