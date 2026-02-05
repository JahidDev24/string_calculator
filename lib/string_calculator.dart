class StringCalculator {
int add(String numbers) {
  if (numbers.isEmpty) return 0;
 final mynum =  numbers.replaceAll("\n",",");
  final parts = mynum.split(',');
  return parts.map(int.parse).reduce((a, b) => a + b);
}
}

