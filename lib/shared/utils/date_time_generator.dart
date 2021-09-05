import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

class DateTimeGenerator {
  const DateTimeGenerator();

  static List<WeekdayViewModel> generateWeekdays() {
    final firstDayOfWeek = _calculateFirstDayOfWeek();
    return _generateWeekFromFirstDate(firstDayOfWeek);
  }

  static DateTime _calculateFirstDayOfWeek() {
    final now = DateTime.now();
    return now.subtract(Duration(days: now.weekday == DateTime.sunday ? 0 : now.weekday));
  }

  static List<WeekdayViewModel> _generateWeekFromFirstDate(DateTime firstDate) {
    return List.generate(DateTime.daysPerWeek, (index) {
      final newDateTime = firstDate.add(Duration(days: index));
      return WeekdayViewModel.fromDateTime(newDateTime);
    });
  }
}
