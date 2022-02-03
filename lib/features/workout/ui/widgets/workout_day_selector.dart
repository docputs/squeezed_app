import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';

import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/shared/utils/date_time_generator.dart';

class WorkoutDaySelector extends StatefulWidget {
  final void Function(WeekdayViewModel)? onWeekdaySelected;

  const WorkoutDaySelector({Key? key, this.onWeekdaySelected}) : super(key: key);

  @override
  _WorkoutDaySelectorState createState() => _WorkoutDaySelectorState();
}

class _WorkoutDaySelectorState extends State<WorkoutDaySelector> {
  late WeekdayViewModel _selectedWeekday;

  @override
  void initState() {
    super.initState();
    _selectedWeekday = WeekdayViewModel.today();
  }

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
        setState(() => _selectedWeekday = weekday);
        if (widget.onWeekdaySelected != null) {
          widget.onWeekdaySelected!(_selectedWeekday);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.defaultBorderRadius),
          color: _selectedWeekday == weekday ? AppColors.primary : AppColors.greyLight,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              weekday.firstChar,
              style: TextStyle(color: _selectedWeekday == weekday ? Colors.white : AppColors.grey),
            ),
            const SizedBox(height: 5),
            Text(
              weekday.leadingZeroFormattedDay,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _selectedWeekday == weekday ? Colors.white : AppColors.greyDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
