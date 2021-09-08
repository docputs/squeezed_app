class WeekdayUtils {
  const WeekdayUtils._();

  static recalculateWeekdayNumberConsideringSunday(int weekday) {
    return weekday == DateTime.sunday ? 0 : weekday;
  }
}
