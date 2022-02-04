import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class WeekdayViewModel extends Equatable {
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
  List<Object?> get props => [nameOfDay, day, weekdayNumber];
}
