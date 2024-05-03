class Book {
  final String title;
  final String author;
  final String ISBN;
  bool available;

  Book(
      {required this.title,
      required this.author,
      required this.ISBN,
      this.available = true});
}
