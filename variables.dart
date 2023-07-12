void main() {
  int myNum = 35;
  double myDouble = 2.99;
  bool myBool = true;
  String myString = "I am a string";
  String myString2 = """
  I am a multiline
  string
  """;
  // compile time
  const daysInYear = 365;
  // runtime
  final today = DateTime.now();

  print(myNum);
  print(myDouble);
  print(myBool);
  print(myString);
  print('The string 2 variable is $myString2');
  print('There are $daysInYear days in a year');
  print('Today is day ${today.weekday}');

  // null variables
  int? myNullVariable;
  print('ten: $myNullVariable');

  myNullVariable = 10;
  print('ten: $myNullVariable');
}
