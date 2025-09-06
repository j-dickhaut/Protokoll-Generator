String? validateStreet(value) {
  /*validates a german street name plus house numbers like. 
  Musterstraße 12
  Am Bach 5a
  Hauptstr. 101
  Bürgermeister-Müller-Straße 7
  Industriestraße 12-16
  */

  final streetRegex = RegExp(
    r"^[A-Za-zÄÖÜäöüß' .-]{2,}\s\d+[a-zA-Z]?(-\d+[a-zA-Z]?)?$",
  );
  if (value == null || !streetRegex.hasMatch(value)) {
    return 'enter a valid city';
  }
  return null;
}
