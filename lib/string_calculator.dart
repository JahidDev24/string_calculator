class StringCalculator {
int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiter = ',';
  String values = numbers;

  if (numbers.startsWith('//')) {
    delimiter = numbers[2];
    values = numbers.substring(4);
  }

  values = values.replaceAll('\n', delimiter);
  final parts = values.split(delimiter);

  return parts.map(int.parse).reduce((a, b) => a + b);
}

}

