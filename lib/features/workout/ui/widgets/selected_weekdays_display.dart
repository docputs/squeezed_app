import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/shared/utils/date_time_generator.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

class SelectedWeekdaysDisplay extends StatefulWidget {
  final Set<WeekdayViewModel> weekdays;

  const SelectedWeekdaysDisplay(this.weekdays, {Key? key}) : super(key: key);

  @override
  _SelectedWeekdaysDisplayState createState() => _SelectedWeekdaysDisplayState();
}

class _SelectedWeekdaysDisplayState extends State<SelectedWeekdaysDisplay> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: DateTimeGenerator.generateWeekdays().map(_buildWeekdayButton).toList(),
    );
  }

  Widget _buildWeekdayButton(WeekdayViewModel weekday) {
    return Container(
      width: _calculateWeekdayButtonWidth(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.defaultBorderRadius),
        color: widget.weekdays.contains(weekday) ? AppColors.primary : AppColors.greyLight,
      ),
      child: Center(
        child: Text(
          weekday.firstChar,
          style: TextStyle(
            color: widget.weekdays.contains(weekday) ? Colors.white : AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  double _calculateWeekdayButtonWidth() {
    final pageSize = MediaQuery.of(context).size;
    return (pageSize.width / DateTime.daysPerWeek) - Paddings.small;
  }
}
