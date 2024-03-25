/// functions
/// how to create a function
/// how to call a function
/// things you can do in a function
/// accepting parameters in a function
/// the different types of paramters you can pass to a function

// return-type    function-name    input-parameters    function-body
//    void             main               ()                 {}
void main() {
  printName();
  int sum = addTwoNumbers();
  print(sum);
  int sub = subtractTwoNumbers(59, 24);
  print(sub);
  int sub2 = subtractTwoNumbers(40, 23);
  print(sub2);
}

void printName() {
  print("Opeyemi");
}

int addTwoNumbers() {
  return 4 + 8;
}

int subtractTwoNumbers(int a, int b) {
  return a - b;
}
