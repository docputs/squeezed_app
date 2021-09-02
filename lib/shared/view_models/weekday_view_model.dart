import 'package:intl/intl.dart';

class WeekdayViewModel {
  final String nameOfDay;
  final int day;
  final int weekdayNumber;

  const WeekdayViewModel(this.nameOfDay, this.day, this.weekdayNumber);

  String get firstChar => nameOfDay[0];
  String get leadingZeroFormattedDay => day.toString().padLeft(2, '0');

  factory WeekdayViewModel.fromDateTime(DateTime dateTime) {
    final nameOfDay = DateFormat.EEEE().format(dateTime);
    return WeekdayViewModel(nameOfDay, dateTime.day, dateTime.weekday);
  }

  factory WeekdayViewModel.today() {
    return WeekdayViewModel.fromDateTime(DateTime.now());
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeekdayViewModel && other.nameOfDay == nameOfDay && other.day == day && other.weekdayNumber == weekdayNumber;
  }

  @override
  int get hashCode => nameOfDay.hashCode ^ day.hashCode ^ weekdayNumber.hashCode;

  @override
  String toString() => 'Weekday(nameOfDay: $nameOfDay, day: $day, weekdayNumber: $weekdayNumber)';
}
