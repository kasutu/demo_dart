import 'dart:convert';
import 'dart:io';

import 'package:demo/number.dart';

void main() {
  stdout.write('Enter the first number: ');
  String? firstNumber = stdin.readLineSync(encoding: utf8);
  stdout.write('Enter the second number: ');
  String? secondNumber = stdin.readLineSync(encoding: utf8);

  Number a;
  Number b;
  late Number c;

  if (firstNumber != null && secondNumber != null) {
    int prasedFirstNum = int.parse(firstNumber);
    int prasedSecondNum = int.parse(secondNumber);

    a = Number(prasedFirstNum, 'first');
    b = Number(prasedSecondNum, 'second');

    print('The sum of $a and $b is ${a.value + b.value}');

    // if both are even or odd
    // get the sum, difference, product and quotient
    if (a.isEven() && b.isEven() || !a.isEven() && !b.isEven()) {
      print('The difference of $a and $b is ${a.value - b.value}');
      print('The product of $a and $b is ${a.value * b.value}');
      print('The quotient of $a and $b is ${a.value / b.value}');
    }

    // prob 1
    if (a.isEven() && !b.isEven()) {
      c = askThirdNumber();

      // from c to 1
      for (int i = c.value; i <= 10; i++) {
        print(i);
      }
    }

    // prob 2
    if (!a.isEven() && b.isEven()) {
      c = askThirdNumber();

      for (int i = c.value; i >= 1; i--) {
        print(i);
      }
    }

    // determine lowest and hightest
    List<Number> numbers = [a, b, c];
    Number lowest =
        numbers.reduce((curr, next) => curr.value < next.value ? curr : next);
    Number highest =
        numbers.reduce((curr, next) => curr.value > next.value ? curr : next);

    print("The lowest number is ${lowest.order}");
    print("The highest number is ${highest.order}");
  }
}

askThirdNumber() {
  stdout.write('Enter the third number: ');
  String? trdNumber = stdin.readLineSync(encoding: utf8);
  Number c = Number(int.parse(trdNumber!), 'third');

  if (c.value > 10 || c.value < 1) {
    print('adios!');
    exit(0);
  }

  return c;
}
