extension StringNumberExt on String? {
  String fixedNumber(int fractionDigits) {
    if (this == null) return '0';
    final asNumber = double.parse(this!);
    return asNumber.toStringAsFixed(fractionDigits);
  }
}
