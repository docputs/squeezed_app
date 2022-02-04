import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/ui/controllers/exercise_plan_controller.dart';

class RepsAmountInput extends StatelessWidget {
  final ExercisePlanController controller;

  RepsAmountInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Paddings.small,
            vertical: Paddings.small / 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Repetições'),
              const Spacer(),
              Flexible(child: _buildRepsAmountInputField()),
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }

  Widget _buildRepsAmountInputField() {
    return Row(
      children: [
        Flexible(child: _buildFirstInputField()),
        _buildSeparatorDash(),
        Flexible(child: _buildSecondInputField()),
      ],
    );
  }

  Widget _buildFirstInputField() {
    return Observer(
      builder: (_) => _buildCommonRepsInputField(
        textEditingController: controller.minRepsTextController,
        onChanged: controller.changeMinRepsRange,
        action: TextInputAction.next,
      ),
    );
  }

  Widget _buildSecondInputField() {
    return Observer(
      builder: (_) => _buildCommonRepsInputField(
        textEditingController: controller.maxRepsTextController,
        onChanged: controller.changeMaxRepsRange,
      ),
    );
  }

  Widget _buildCommonRepsInputField({
    required TextEditingController textEditingController,
    required void Function(String) onChanged,
    TextInputAction? action,
  }) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        counterText: '',
        filled: controller.repsRange.isEmpty,
        fillColor: AppColors.greyLight,
      ),
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      keyboardType: TextInputType.number,
      maxLength: 2,
      enableSuggestions: false,
      onChanged: onChanged,
      textInputAction: action,
    );
  }

  Widget _buildSeparatorDash() {
    return const Padding(
      padding: EdgeInsets.only(left: 5, right: 10),
      child: Icon(Icons.horizontal_rule),
    );
  }
}
