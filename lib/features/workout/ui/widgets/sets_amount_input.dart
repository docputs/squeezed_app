import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:squeezed_app/features/workout/ui/controllers/exercise_plan_controller.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/widgets/custom_divider.dart';

class SetsAmountInput extends StatelessWidget {
  final ExercisePlanController controller;

  SetsAmountInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        Padding(
          padding: const EdgeInsets.all(Constants.defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Séries'),
              _buildSetsAmountInputField(),
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }

  Widget _buildSetsAmountInputField() {
    return Row(
      children: [
        _buildSetAmountIconButton(
          icon: Icons.remove,
          onPressed: controller.decrementSetsAmount,
        ),
        const SizedBox(width: 30),
        _buildSetsAmountDisplay(),
        const SizedBox(width: 30),
        _buildSetAmountIconButton(
          icon: Icons.add,
          onPressed: controller.incrementSetsAmount,
        ),
      ],
    );
  }

  Widget _buildSetAmountIconButton({required IconData icon, VoidCallback? onPressed}) {
    return IconButton(
      constraints: const BoxConstraints(),
      padding: const EdgeInsets.all(0),
      icon: Icon(icon, color: AppColors.primary),
      onPressed: onPressed,
    );
  }

  Widget _buildSetsAmountDisplay() {
    return Observer(
      builder: (_) => Text(
        controller.setsAmount.toString(),
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
