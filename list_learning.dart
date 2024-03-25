void main() {
  // Lists
  var myList = [1, 2, 3];
  print(myList);
  print(myList[0]);

  // Change an item
  myList[0] = 34;
  print(myList);

  // Create an empty list
  var emptyList = [];
  print(emptyList);

  // Add to an empty list
  emptyList.add(40);
  print(emptyList);

  // Add mulitple to empty list
  emptyList.addAll([20, 27, 28]);
  print(emptyList);

  // Insert at specific position (position, item)
  myList.insert(3, 73);
  print(myList);

  // Insert many
  myList.insertAll(4, [12, 13, 14]);
  print(myList);

  // Mixed lists
  var mixedList = (1, 3, "Oscar", "John");
  print(mixedList);

  // Remove from list
  myList.remove(3);
  print(myList);

  // Remove from specific location
  myList.removeAt(2);
  print(myList);
}
