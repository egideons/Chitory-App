import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/showSnackBar.dart';

class FirebaseAuthMehods {
  late final FirebaseAuth _auth;
  FirebaseAuthMehods(this._auth);

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // FirebaseAuthMehods(FirebaseAuth instance);

  //Create user obj based on FirebaseUser
  // User _userFromFirebaseUser(FirebaseUser user) {
  //   return user != null ? User;
  // }

  //sign in with email & password

  //sign up with email & password
  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(
        context,
        e.message!,
      );
    }
  }

  //sign out
}
