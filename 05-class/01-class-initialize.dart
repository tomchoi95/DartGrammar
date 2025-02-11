const int numberOfDays = 7;

class DaysLeftInWeek {
  int currentDay = 0;

  // 생성자
  DaysLeftInWeek() {
    currentDay = DateTime.now().weekday;
  }

  // 메서드: 남은 일 수 계산.
  int howManyDaysLeft() {
    return numberOfDays - currentDay;
  }
}

void main() {
  var daysLeft = DaysLeftInWeek();

  print('There are ${daysLeft.howManyDaysLeft()} days left in the week');
}
