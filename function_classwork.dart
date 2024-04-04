void main() {
  printName();
  int sub = subtractTwoNumbers();
  print(sub);
  int mul = multiplyTwoNumbers(5, 10);
  print(mul);
  double div = divideTwoNumbers(25, 5);
  print(div);
  print(intro("Uniben", "Benin"));
}

// Optional positional parameters
String intro([String school = "Unilag", String location = "Akoka"]) {
  return "The name of my school is $school and it is located at $location";
}

void printName() {
  print("Opeyemi");
}

int addTwoNumbers() {
  int a = 5;
  int b = 15;
  return a + b;
}

int subtractTwoNumbers() {
  int c = 76;
  int d = 15;
  return c - d;
}

int multiplyTwoNumbers(int e, int f) {
  return e * f;
}

double divideTwoNumbers(int g, int h) {
  return g / h;
}
