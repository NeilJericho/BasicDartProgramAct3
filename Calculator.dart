import 'dart:io';

void main() {
  print('Simple Calculator');

  stdout.write('Enter first number: ');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter second number: ');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null) {
    print('Invalid input.');
    return;
  }

  stdout.write('Enter operator (+, -, *, /): ');
  String? op = stdin.readLineSync();

  if (op == '+') {
    print('Result: ${(num1 + num2).toStringAsFixed(2)}');
  } else if (op == '-') {
    print('Result: ${(num1 - num2).toStringAsFixed(2)}');
  } else if (op == '*') {
    print('Result: ${(num1 * num2).toStringAsFixed(2)}');
  } else if (op == '/') {
    if (num2 == 0) {
      print('Error: Cannot divide by zero.');
    } else {
      print('Result: ${(num1 / num2).toStringAsFixed(2)}');
    }
  } else {
    print('Invalid operator.');
  }
}
