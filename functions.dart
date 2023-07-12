void main() async {
  getCurrentDateTime();
  getCurrentDateTimeDifference(-7);
  printGreetingNamed();
  printGreetingNamed(personName: 'Rich');
  printGreetingNamed(personName: 'Mary', clientId: 001);
  printGreetingPositional('Rich');
  printGreetingPositional('Rich', 'Rose');

  DateTime timeNow = getCurrentDateTimeValue(0);
  DateTime timeDifference = getCurrentDateTimeValue(-7);

  print('The time now is: $timeNow');
  print('The time minus 7 hours is: $timeDifference');

  // Anonymous functions
  int value = 5;

  // Anonymous functions - style 1
  int ex1Squared(num1) => num1 * num1;
  int ex1Cubed(num1) => num1 * num1 * num1;

  // Anonymous funcitons - style 2
  int ex2Squared(num1) {
    return num1 * num1;
  }

  int ex2Cubed(num1) {
    return num1 * num1 * num1;
  }

  print('EX1: $value squared is ${ex1Squared(value)}');
  print('EX1: $value cubed is ${ex1Cubed(value)}');

  print('EX2: $value squared is ${ex2Squared(value)}');
  print('EX2: $value cubed is ${ex2Cubed(value)}');

  // Adding a functional delay using a Feature
  int myDelay = 5;

  print('Hello');

  var v = await _customDelay(myDelay);
  var customText = myDelay == 1 ? "second later" : "seconds later";

  print('Its $v $customText');
}

void getCurrentDateTime() {
  var timeLondon = DateTime.now();
  print('London: $timeLondon');
}

// Adding parameters to functions
void getCurrentDateTimeDifference(int hourDifference) {
  var timeNow = DateTime.now();
  var timeDifference = timeNow.add(Duration(hours: hourDifference));

  print('The time now is: $timeNow');
  print('The time minus 7 hours is: $timeDifference');
}

// Optional parameters
void printGreetingNamed({String personName = 'Stranger', int clientId = 999}) {
  if (personName.contains('Stranger')) {
    print('Employee: $clientId Stranger danger!');
  } else {
    print('EmployeeL $clientId $personName');
  }
}

// Positional parameters
void printGreetingPositional(String personName, [String? personSurname]) {
  print(personName);
  if (personSurname != null) {
    print(personSurname);
  }
}

// Returning values from functions
DateTime getCurrentDateTimeValue(int hourDifference) {
  DateTime timeNow = DateTime.now();
  DateTime timeDifference = timeNow.add(Duration(hours: hourDifference));

  return timeDifference;
}

// Adding a functional delay using a Feature
Future<int> _customDelay(int delay) async {
  try {
    await Future.delayed(Duration(seconds: delay));
    return delay;
  } catch (e) {
    print(e);
    return delay;
  }
}
