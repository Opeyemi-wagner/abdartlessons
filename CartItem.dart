class CartItem {
  final String productID;
  final String name;
  final double price;
  int quantity;

  CartItem(
      {required this.productID,
      required this.name,
      required this.price,
      required this.quantity});

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }

  @override
  String toString() {
    return "$name* $quantity";
  }
}
