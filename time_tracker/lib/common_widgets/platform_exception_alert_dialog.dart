import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:time_tracker/common_widgets/platform_alert_dialog.dart';

class PlatformExceptionAlertDialog extends PlatformAlertDialog {
  PlatformExceptionAlertDialog({
    @required String title,
    @required PlatformException exception,
  }) : super(
          title: title,
          content: _message(exception),
          defaultActionText: 'Ok',
        );

  static String _message(PlatformException exception) {
    if (exception.message == 'FIRFirestoreErrorDomain') {
      if (exception.code == 'Error 7') {
        return 'Missing or Insuficient Permission';
      }
    }
    return _errors[exception.code] ?? exception.message;
  }

  static Map<String, String> _errors = {
    'ERROR_NOT_ALLOWED':
        'Indicates that email and email sign-in link accounts are not enabled. Enable them in the Auth section of theFirebase console.',
    'ERROR_DISABLED': 'Indicates the user\'s account is disabled.',
    'ERROR_INVALID': 'The email is invalid',
    'ERROR_INVALID_EMAIL': 'The email is not registered',
    'ERROR_WRONG_PASSWORD': 'The Password is Wrong',
    'ERROR_USER_NOT_FOUND':
        'There is no user corresponding to the given email address or the user has been deleted.',
    'ERROR_USER_DISABLED': 'The user has been disabled ',
    'ERROR_TOO_MANY_REQUESTS':
        'There was too many attempts to sign in as this user.',
    'ERROR_OPERATION_NOT_ALLOWED': 'Email & Password accounts are not enabled.',
  };
}
