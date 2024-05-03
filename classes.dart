void main() {
  Person person = Person("Opeyemi", 32, 89.9);
  person.sayHello();
  Car car = Car("Toyota", 2021, 100.3);
  car.sayHello();
  Person student = Student("Titi", 33, 87.9, "Unilag");
  student.sayHello();
  Car carbrand = Toyota(2022, 150.25, "Venza");
  carbrand.sayHello();
}

class Person {
  // class construtor
  const Person(this.name, this.age, this.score);

  // class properties
  final String name;
  final int age;
  final double score;

  // class methods
  void sayHello() {
    print("$name is saying hello");
  }
}

// Inheritance
class Student extends Person {
  // class constructor
  const Student(super.name, super.age, super.score, this.school);

  final String school;

  @override
  void sayHello() {
    print("$name is a student of $school, and is saying Hello");
  }
}

class Car {
  const Car(this.name, this.year, this.speed);

  final String name;
  final int year;
  final double speed;

  void sayHello() {
    print("$name of year $year is fastest at $speed mph");
  }
}

class Toyota extends Car {
  const Toyota(int year, double speed, this.brandstyle):super("Toyota",year,speed);

  final String brandstyle;

  @override
  void sayHello() {
    print("$name of year $year $brandstyle is the most affordable available");
  }
}
