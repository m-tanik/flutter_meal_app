class CalendarDayData {
  String date;
  String styleClass;
  String year;
  String month;

  CalendarDayData(this.date, this.styleClass, this.year, this.month) {
    if (date == "") {
      date = "●";
      styleClass = "cal-out-of-range";
    }
  }
}
