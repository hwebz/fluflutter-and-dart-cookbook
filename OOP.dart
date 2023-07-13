const numDays = 7;

// Creating a class
class DaysLeftInWeek {
  int currentDay = 0;

  DaysLeftInWeek() {
    currentDay = DateTime.now().weekday.toInt();
  }

  int howManyDaysLeft() {
    return numDays - currentDay;
  }
}

// Adding class inheritance
class Media {
  String title = '';
  String type = '';

  Media() {
    type = "Class";
  }

  void setMediaTitle(String mediaTitle) {
    title = mediaTitle;
  }

  String getMediaTitle() {
    return title;
  }

  String getMediaType() {
    return type;
  }
}

class Book extends Media {
  String author = '';
  String isbn = '';

  Book() {
    type = 'Subclass';
  }

  void setBookAuthor(String bookAuthor) {
    author = bookAuthor;
  }

  void setBookISBN(String bookISBN) {
    isbn = bookISBN;
  }

  String getBookTitle() {
    return title;
  }

  String getBookAuthor() {
    return author;
  }

  String getBookISBN() {
    return isbn;
  }
}

// Adding a class interface
abstract class SecondMedia {
  late String myId;
  late String myTitle;
  late String myType;

  void setMediaTitle(String mediaTitle);
  String getMediaTitle();

  void setMediaType(String mediaType);
  String getMediaType();

  void setMediaId(String mediaId);
  String getMediaId();
}

class SecondBook implements SecondMedia {
  @override
  late String myId;

  @override
  late String myTitle;

  @override
  late String myType;

  @override
  String getMediaId() {
    return myId;
  }

  @override
  String getMediaTitle() {
    return myTitle;
  }

  @override
  String getMediaType() {
    return myType;
  }

  @override
  void setMediaId(String mediaId) {
    myId = mediaId;
  }

  @override
  void setMediaTitle(String mediaTitle) {
    myTitle = mediaTitle;
  }

  @override
  void setMediaType(String mediaType) {
    myType = mediaType;
  }

  SecondBook(String mediaTitle, String mediaType, String mediaId) {
    myTitle = mediaTitle;
    myType = mediaType;
    myId = mediaId;
  }
}

// Adding a class mixin
mixin SnickersOriginal {
  bool hasHazelnut = true;
  bool hasRice = false;
  bool hasAlmond = false;
}

mixin SnickersCrisp {
  bool hasHazeLnut = true;
  bool hasRice = true;
  bool hasAlmond = false;
}

class ChocolateBar {
  bool hasChocolate = true;
}

class CandyBar extends ChocolateBar with SnickersOriginal {
  List<String> ingredients = [];

  CandyBar() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }
    if (hasHazelnut) {
      ingredients.add('Hazelnut');
    }
    if (hasRice) {
      ingredients.add('Rice');
    }
    if (hasAlmond) {
      ingredients.add('Almond');
    }
  }

  List<String> getIntredients() {
    return ingredients;
  }
}

void main() {
  DaysLeftInWeek dayCalculator = DaysLeftInWeek();

  print('Today is ${dayCalculator.currentDay}');
  print('${dayCalculator.howManyDaysLeft()} day(s) left in the week');

  // Adding class inheritance
  var myMedia = Media();

  myMedia.setMediaTitle('Tron');
  print('=====================');
  print('Title: ${myMedia.getMediaTitle()}');
  print('Type: ${myMedia.getMediaType()}');

  var myBook = Book();
  myBook.setMediaTitle('Jungle Book');
  myBook.setBookAuthor('R Kipling');
  print('Title: ${myBook.getMediaTitle()}');
  print('Author: ${myBook.getBookAuthor()}');
  print('Type: ${myBook.getMediaType()}');

  // Adding a class interface
  final SecondBook mySecondBook =
      SecondBook('Serverless Computing with Google Cloud', 'Book', 'ISBN-1111');
  print('=====================');
  print(mySecondBook.getMediaTitle());
  print(mySecondBook.getMediaType());
  print(mySecondBook.getMediaId());

  // Adding a class mixin
  var snickersOriginal = CandyBar();
  print('=====================');
  print('Ingredients:');
  snickersOriginal.getIntredients().forEach((ingredient) {
    print(ingredient);
  });
}
