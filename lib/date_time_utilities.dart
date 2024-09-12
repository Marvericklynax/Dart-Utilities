DateTime addDaysToDate(DateTime date, int days) {
  return date.add(Duration(days: days));
}

DateTime subtractDaysFromDate(DateTime date, int days) {
  return date.subtract(Duration(days: days));
}

Duration differenceBetweenDates(DateTime date1, DateTime date2) {
  return date1.difference(date2);
}

String formatDate(DateTime date) {
  return "${date.year}-${date.month}-${date.day}";
}
