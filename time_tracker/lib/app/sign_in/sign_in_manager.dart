import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:time_tracker/services/auth.dart';

class SignInManager {
  final AuthBase auth;
  final ValueNotifier<bool> isLoading;
  SignInManager({@required this.auth, @required this.isLoading});
  final StreamController<bool> _isLoadingController = StreamController<bool>();

  Future<User> _signIn(Future<User> Function() signInMethod) async {
    try {
      isLoading.value = true;
      return await signInMethod();
    } catch (e) {
      isLoading.value = false;
      rethrow;
    }
  }

  Future<User> signInAnonymously() async =>
      await _signIn(auth.signInAnonymously);
  Future<User> signInWithGoogle() async => await _signIn(auth.signInWithGoogle);
}
