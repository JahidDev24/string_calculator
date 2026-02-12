import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  test('Empty string returns 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });
  // Single number returns test case
  test('Single number returns its value', () {
  final calculator = StringCalculator();
  expect(calculator.add('5'), 5);
});
// two number seperate via comma
test('two numbers separated by comma', () {
  final calculator = StringCalculator();
  expect(calculator.add('1,2'), 3);
});
// \n for new line delimeter
test('new line works as delimiter', () {
  final calculator = StringCalculator();
  expect(calculator.add('1\n2,3'), 6);
});
// custam regis based delimiter
test('custom delimiter works', () {
  final calculator = StringCalculator();
  expect(calculator.add('//*\n1*2'), 2);
});

// lets make netive value execptions 
test('negative numbers throw error', () {
  final calculator = StringCalculator();

  expect(
    () => calculator.add('1,-2'),
    throwsException,
  );
});

}
