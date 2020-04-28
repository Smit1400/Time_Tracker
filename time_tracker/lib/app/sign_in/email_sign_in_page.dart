import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_form_bloc_based.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_form_change_notifier.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_form_stateful.dart';
import 'package:time_tracker/services/auth.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Card(
            child: EmailSignInFormChangeNotifier.create(context),
          ),
        ),
      ),
    );
  }
}
