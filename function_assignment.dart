// Part B
void main() {
  sayHello();
  int area = calculateArea();
  print(area);
  bool ans = isEven(50);
  print(ans);
  print(greetUser("Mariam"));
  double ans5 = calculateBMI(15, 12);
  print(ans5);
  print(reverseString("Favorable"));
  double ans7 = calculatePower(4, 5);
  print(ans7);
  bool ans8 = isPrime(67);
  print(ans8);
  int ans9 = sumOfDigits(1234);
  print(ans9);
  printMultiplicationTable(5);
}

// 1
void sayHello() {
  print("Hello world!");
}

// 2
int calculateArea() {
  int Breadth = 25;
  int Length = 15;
  return Breadth * Length;
}

// 3
bool isEven(int a) {
  if (a % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

// 4
String greetUser([String name = "Johnson"]) {
  return "Hello $name, welcome to the place to find true love";
}

// 5
double calculateBMI(double weight, double height) {
  if (height <= 0) {
    print("Wrong input, height can not be negative");
  }
  return weight / (height * height);
}

// 6 reverses the input given the user
String reverseString(String input) {
  return input.split("").reversed.join("");
}

// 7
double calculatePower(int base, int exponent) {
  double result = 1;
  for (int i = 0; i < exponent; i++) {
    result *= base;
  }
  return result;
}

// 8
bool isPrime(int a) {
  if (a <= 1) {
    return false;
  }
  if (a <= 3) {
    return true;
  }
  if (a % 2 == 0 || a % 3 == 0) {
    return false;
  }
  for (int i = 5; i * i <= a; i += 6) {
    if (a % i == 0 || a % (i + 2) == 0) {
      return false;
    }
  }
  return true;
}

// 9
int sumOfDigits(int num) {
  int sum = 0;
  while (num > 0) {
    int digit = num % 10;
    sum += digit;
    num ~/= 10; // Efficient division by 10 (truncates decimal part)
  }
  return sum;
}

// 10
void printMultiplicationTable(int n) {
  for (int i = 1; i <= 10; i++) {
    int result = n * i;
    print("$n * $i = $result");
  }
}
