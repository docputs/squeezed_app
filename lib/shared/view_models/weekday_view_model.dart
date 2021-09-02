import 'package:intl/intl.dart';

class WeekdayViewModel {
  final String nameOfDay;
  final int day;

  const WeekdayViewModel(this.nameOfDay, this.day);

  String get firstChar => nameOfDay[0];
  String get leadingZeroFormattedDay => day.toString().padLeft(2, '0');

  @override
  String toString() => '$day - $nameOfDay';

  factory WeekdayViewModel.fromDateTime(DateTime dateTime) {
    final nameOfDay = DateFormat.EEEE().format(dateTime);
    return WeekdayViewModel(nameOfDay, dateTime.day);
  }

  factory WeekdayViewModel.today() {
    return WeekdayViewModel.fromDateTime(DateTime.now());
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeekdayViewModel && other.nameOfDay == nameOfDay && other.day == day;
  }

  @override
  int get hashCode => nameOfDay.hashCode ^ day.hashCode;
}
