class Validator {
  static String? stringValidator(String? name) {
    if (name!.isEmpty && name.trim().isEmpty) {
      return 'Enter Something';
    } else {
      return null;
    }
  }
}
