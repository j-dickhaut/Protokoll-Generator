String? validatePostalcode(value) {
  //validates a german postal code. Only five numbers.
  final postalRegex = RegExp(r'^\d{5}$');
  if (value == null || !postalRegex.hasMatch(value)) {
    return 'enter a valid german postal code';
  }
  return null;
}
