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
  final nums = values.split(delimiter).map(int.parse).toList();

  final negatives = nums.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negative numbers not allowed');
  }

  return nums.reduce((a, b) => a + b);
}

}

