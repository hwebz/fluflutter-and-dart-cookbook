import 'dart:convert';

void main() {
  // Creating lists of data
  List listMonths = [
    'Janurary',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November'
  ];

  // Amending a list of data
  listMonths.add('December');

  listMonths.forEach(print);

  // Using lists with complex types
  Map<String, dynamic> filmStarWars = {'title': 'Star Wars', 'year': 1977};
  Map<String, dynamic> filEmpire = {
    'title': 'The Empire Strikes Back',
    'year': 1980
  };
  Map<String, dynamic> filmJedi = {
    'title': 'The Return of the Jedi',
    'year': 1983
  };

  List listFilms = [filmStarWars, filEmpire, filmJedi];

  Map<String, dynamic> currentFilm = listFilms[0];

  print(currentFilm);
  print(currentFilm['title']);

  // Handling map key/value pairings
  Map<int, String> mapMonths = {0: 'Janurary', 1: 'February', 2: 'March'};
  Map<int, String> moreMonths = {3: 'April', 4: 'May'};

  mapMonths.addEntries(moreMonths.entries);

  mapMonths.forEach((key, value) {
    print('$key: $value');
  });

  // Printing map data structure content
  print('Month: ${mapMonths[0]}');
  print('Map: $mapMonths');

  // Validating that content exists in a map
  if (mapMonths[0] != null) {
    print('Test 1: Key exists');
  }

  if (mapMonths.containsKey(2)) {
    print('Test 2: Key exists');
  }

  // Printing complex data types
  // Create JSON value
  Map<String, dynamic> data = {
    jsonEncode('title'): json.encode('Star Wars'),
    jsonEncode('year'): json.encode(1977)
  };

  // Decode the JSON
  Map<String, dynamic> items = json.decode(data.toString());

  print(items);
  print(items['title']);
  print("This is the title: $items['title']");
  print("This is the title: ${items['title']}");
}
