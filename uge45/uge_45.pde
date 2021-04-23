
int[] dayPerMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

void setup() {
  noLoop();
  
  print(isLeap(4));
  print(isLeap(100));
  print(isLeap(400));
  print(isLeap(1000));
  print(isLeap(2000));
}

void draw() {
  
}

int monthsLeftOfYear(int month) {
  return 12 - month;
}

int daysLeftOfMonth(int day, int month){
  return dayPerMonth[month] - day;
}

int isLeap(int year) {
  if ((year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0))
    return 1;
  else
    return 0;
}
