import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:squeezed_app/features/workout/ui/controllers/exercise_plan_controller.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/widgets/custom_divider.dart';

class LoadAmountInput extends StatelessWidget {
  final ExercisePlanController controller;

  LoadAmountInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaultPadding,
            vertical: Constants.defaultPadding / 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Carga'),
              const Spacer(flex: 2),
              Flexible(child: _buildLoadAmountInputField()),
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }

  Widget _buildLoadAmountInputField() {
    return Row(
      children: [
        Flexible(child: _buildLoadTextField()),
        const SizedBox(width: 10),
        _buildMeasureLabel(),
      ],
    );
  }

  Widget _buildLoadTextField() {
    return Observer(
      builder: (_) => TextField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          counterText: '',
          filled: controller.totalLoad == null,
          fillColor: AppColors.greyLight,
        ),
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 5,
        onChanged: controller.changeTotalLoad,
      ),
    );
  }

  Widget _buildMeasureLabel() {
    return const Text(
      'KG',
      style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.grey),
    );
  }
}
