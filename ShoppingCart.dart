import 'CartItem.dart';

class ShoppingCart {
  final List<CartItem> _items = [];

  void addItem(CartItem item) {
    var x = _items.firstWhere(
      (element) => element.productID == item.productID,
      orElse: () => CartItem(productID: "-1", name: "", price: 0, quantity: -1),
    );
    if (x.productID == "-1") {
      return _items.add(item);
    }
  }

  void removeItem(String productID) {
    _items.removeWhere((item) => item.productID == productID);
  }

  double getTotalPrice() {
    double totalPrice = 0;
    if (_items.isEmpty) {
      return totalPrice;
    }
    for (var item in _items) {
      totalPrice = totalPrice + (item.price * item.quantity);
    }
    return totalPrice;
  }

  void displayCart() {
    print(_items);
  }
}
