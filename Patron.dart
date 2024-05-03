import 'book.dart';

class Patron {
  final String name;
  final int libraryID;
  Patron({required this.name, required this.libraryID});

  final List<Book> booksCheckedOut = [];
}
