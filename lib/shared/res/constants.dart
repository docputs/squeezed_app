class Constants {
  const Constants._();

  static final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static final telefoneRegex = RegExp(r'(\(?\d{2}\)?\s)?(\d{4,5}\-\d{4})');
  static final numberRegex = RegExp(r'[0-9]');

  static const defaultPadding = 20.0;
  static const defaultBorderRadius = 6.0;
}
