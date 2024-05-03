import 'CartItem.dart';
import 'ShoppingCart.dart';

void main() {
  var cart = ShoppingCart();

  var item1 = CartItem(
      productID: "prod001", name: "Paracetamol", price: 200.00, quantity: 3);
  var item2 = CartItem(
      productID: "prod002", name: "Amoxicillin", price: 800.00, quantity: 5);
  var item3 = CartItem(
      productID: "prod003", name: "Cough Syrup", price: 2760.00, quantity: 1);

  cart.addItem(item1);
  cart.addItem(item2);
  cart.addItem(item3);

  cart.displayCart();
  print('Total price: \$${cart.getTotalPrice()}');
}
