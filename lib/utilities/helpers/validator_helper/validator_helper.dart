class ValidatorHelper {
  bool isEmail(String email) {
    final RegExp emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return emailRegex.hasMatch(email);
  }

  bool isPassword(String password) {
    final RegExp passwordRegex =
        RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{6,}$');
    return passwordRegex.hasMatch(password);
  }

  bool isName(String name) {
    final RegExp nameRegex = RegExp(r'^[a-z A-Z,.\-]+$');
    return nameRegex.hasMatch(name);
  }

  bool isAge(String ageString) {
    try {
      final int age = int.parse(ageString);
      return age >= 0 && age <= 100;
    } on Exception catch (_) {
      return false;
    }
  }

  bool isNumericLengthPhoneValid(String input) {
    RegExp regex = RegExp(r'^\d{8,15}$');
    return regex.hasMatch(input);
  }

  bool isNumericLengthPasswordValid(String input) {
    RegExp regex = RegExp(r'^.{6,20}$');
    return regex.hasMatch(input);
  }

  bool isIdentifierCode(String code) {
    final RegExp identifierRegex = RegExp(r'^([(]?[0-9]{12}|[(]?[0-9]{9})$');
    return identifierRegex.hasMatch(code);
  }

  bool isCreditCard(String code) {
    final RegExp creditcardRegex = RegExp(
        r'^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$');
    return creditcardRegex.hasMatch(code);
  }
}
