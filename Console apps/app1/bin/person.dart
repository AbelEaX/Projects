void main() {
  var person = new Person('Abel');

  person.printName();
}

class Person {
  String firstName;
  Person(this.firstName);

  printName() {
    print(firstName);
  }
}
