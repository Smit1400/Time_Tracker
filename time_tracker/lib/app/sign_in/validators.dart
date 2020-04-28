abstract class StringValidator {
  bool isValid(String value);
}

class NonEmptyStringValidator extends StringValidator {
  @override
  bool isValid(String value) {
    // TODO: implement isValid
    return value.isNotEmpty;
  }
}

class EmailAndPasswordValidator {
  final StringValidator emailValidator = NonEmptyStringValidator();
  final StringValidator passwordValidator = NonEmptyStringValidator();
  final String invalidEmailErrorText = 'Email can\'t be empty';
  final String invalidPasswordErrorText = 'Email can\'t be empty';
}
