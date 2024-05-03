import "book.dart";
import 'Patron.dart';
import 'Library.dart';

void main() {
  var checkout = Library(
      name: "Ikeja City Library",
      address: "1, stephen street, Ikeja, Lagos, Nigeria");

  var input1 = Book(
      title: "diary of a bird",
      author: "James Nerd",
      ISBN: "001",
      available: true);

  checkout.addBook(input1);

  var Patron1 = Patron(name: "Nick", libraryID: 123);

  checkout.registerPatron(Patron1);
  checkout.checkoutBook("001", 123, "diary of a bird");
}
