import 'book.dart';
import 'Patron.dart';

class Library {
  final String name;
  final String address;
  final List<Book> _books = [];
  final List<Patron> _patrons = [];

  Library({required this.name, required this.address});

  void addBook(Book book) {
    var x = _books.firstWhere(
      (element) => element.ISBN == book.ISBN,
      orElse: () => Book(title: "", author: "", ISBN: "-1", available: true),
    );
    if (x.ISBN == "-1") {
      return _books.add(book);
    }
  }

  void removeBook(String ISBN) {
    _books.removeWhere((book) => book.ISBN == ISBN);
  }

  void registerPatron(Patron patron) {
    var y = _patrons.firstWhere(
      (element) => element.libraryID == patron.libraryID,
      orElse: () => Patron(name: "", libraryID: -1),
    );
    if (y.libraryID == -1) {
      return _patrons.add(patron);
    }
  }

  void checkoutBook(String ISBN, int LibraryID, String title) {
    int bookIndex = _books.indexWhere((book) => book.ISBN == ISBN);
    int patronIndex =
        _patrons.indexWhere((patron) => patron.libraryID == LibraryID);
    if (bookIndex != -1 && patronIndex != -1 && _books[bookIndex].available) {
      _books[bookIndex].available = false;
      _patrons[patronIndex].booksCheckedOut.add(_books[bookIndex]);
      print(
          "$title with ISBN '$ISBN' successfully checked out by ${_patrons[patronIndex].name}.");
    } else {
      if (bookIndex == -1) {
        print("Book with ISBN $ISBN not found.");
      } else if (patronIndex == -1) {
        print("Patron with LibraryID $LibraryID not found.");
      } else if (!_books[bookIndex].available) {
        print("Book with ISBN $ISBN not found.");
      }
    }
  }

  void checkinBook(String ISBN, int LibraryID) {
    int bookIndex = _books.indexWhere((book) => book.ISBN == ISBN);
    int patronIndex =
        _patrons.indexWhere((patron) => patron.libraryID == LibraryID);
    if (bookIndex == -1 && patronIndex == -1) {
      _books[bookIndex].available = true;
      _patrons[patronIndex]
          .booksCheckedOut
          .removeWhere((book) => book.ISBN == ISBN);
      print("$ISBN successfully checked in by ${_patrons[patronIndex].name}.");
    } else {
      if (bookIndex == -1) {
        print("Book with ISBN $ISBN not found.");
      } else if (patronIndex == -1) {
        print("Patron with LibraryID $LibraryID not found.");
      }
    }
  }
}
