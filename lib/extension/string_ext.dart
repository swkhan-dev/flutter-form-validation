extension StringExt on String {
  bool get isValidEmail =>
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);

  bool get isValidPassword =>
      RegExp(r'[a-zA-Z0-9!@#$%^&*()]{8}').hasMatch(this);
}
