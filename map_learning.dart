void main() {
  // Maps!  key/Value  Pairs
  var toppings = {"John": "Pepperoni", "Mary": "Cheese"};
  print(toppings);
  print(toppings["John"]);

  // Show values
  print(toppings.values);

  // show keys
  print(toppings.keys);

  //show length
  print(toppings.length);

  //Add Something
  toppings["Tim"] = "Sausage";
  print(toppings);

  //Add many things
  toppings.addAll({"Tina": "Bacon", "Jude": "Bread"});
  print(toppings);

  //Remove Something
  toppings.remove("Jude");

  //Remove everything
  toppings.clear();
  print(toppings);
}
