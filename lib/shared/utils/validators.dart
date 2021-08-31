import 'package:squeezed_app/shared/res/constants.dart';

class Validators {
  const Validators._();

  static bool isValidEmailAddress(String input) {
    return Constants.emailRegex.hasMatch(input);
  }

  static bool isValidPassword(String input) {
    return input.isNotEmpty && input.length >= 6;
  }
}
