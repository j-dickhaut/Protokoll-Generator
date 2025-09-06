String? validateCity(value) {
  /* validates german city names. 
  only letters Ü,Ä,Ö,-,',ß and  empty space included and has 
  to be longer, than two letters.
  */
  final cityRegex = RegExp(r"^[A-Za-zÄÖÜäöüß' -]{2,}$");
  if (value == null || !cityRegex.hasMatch(value)) {
    return 'enter a valid city';
  }
  return null;
}
