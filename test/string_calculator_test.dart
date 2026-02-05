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

}
