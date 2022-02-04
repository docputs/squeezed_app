import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/ui/controllers/create_workout_controller.dart';

import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/shared/utils/date_time_generator.dart';

class MultipleWeekdaySelector extends StatefulWidget {
  final WorkoutPlanController controller;

  const MultipleWeekdaySelector({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _MultipleWeekdaySelectorState createState() => _MultipleWeekdaySelectorState();
}

class _MultipleWeekdaySelectorState extends State<MultipleWeekdaySelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: DateTimeGenerator.generateWeekdays().map(_buildWeekdayButton).toList(),
    );
  }

  Widget _buildWeekdayButton(WeekdayViewModel weekday) {
    return GestureDetector(
      onTap: () {
        _addOrRemoveWeekdayFromWorkout(weekday);
      },
      child: Observer(
        builder: (_) => Container(
          width: _calculateWeekdayButtonWidth(),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Constants.defaultBorderRadius),
            color: widget.controller.selectedWeekdays.contains(weekday) ? AppColors.primary : AppColors.greyLight,
          ),
          child: Center(
            child: Text(
              weekday.firstChar,
              style: TextStyle(
                color: widget.controller.selectedWeekdays.contains(weekday) ? Colors.white : AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  double _calculateWeekdayButtonWidth() {
    final pageSize = MediaQuery.of(context).size;
    return (pageSize.width / DateTime.daysPerWeek) - Paddings.small;
  }

  void _addOrRemoveWeekdayFromWorkout(WeekdayViewModel weekday) {
    if (widget.controller.selectedWeekdays.contains(weekday)) {
      widget.controller.removeWeekday(weekday);
    } else {
      widget.controller.addWeekday(weekday);
    }
  }
}
