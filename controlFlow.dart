enum Day { sun, mon, tues }

void main() {
  // if else statement
  bool isFootball = true;

  if (isFootball) {
    print('Go Football!');
  } else {
    print('Go Sports!');
  }

  // while loop
  bool isTrue = true;

  while (isTrue) {
    print('Hello');
    isTrue = false;
  }

  isTrue = true;
  do {
    print('Hello');
    isTrue = false;
  } while (isTrue);

  // for loop
  int maxIterations = 10;
  for (var i = 0; i < maxIterations; i++) {
    print('Iteration: $i');
  }

  List daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  daysOfWeek.forEach((print));

  // switch
  int myValue = 2;

  switch (myValue) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    default:
      print('Error: Value if not defined?');
      break;
  }

  // Enums
  print(Day.values);
  print('${Day.values[0]}');
  print(Day.values.byName('mon'));

  // Exception handling
  String name = 'Dart';

  try {
    print('Name: $name');
    // The following line generates a RangeError
    name.indexOf(name[0], name.length - (name.length + 2));
  } on RangeError catch (exception) {
    print('On Exception: $exception');
  } catch (exception) {
    print('Catch Exception: $exception');
  } finally {
    print('Mission completed!');
  }
}
