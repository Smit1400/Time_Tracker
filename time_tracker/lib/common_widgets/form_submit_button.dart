import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:time_tracker/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.indigo,
          onPressed: onPressed,
        );
}
