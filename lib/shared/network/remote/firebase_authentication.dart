import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // method to signup
  Future<String> createUser({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String confirmPassword,
  }) async {
    try {
      UserCredential credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!.uid;
    } on FirebaseAuthException {
      return 'null';
    }
  }

  // method to login
  Future<String> login(String email, String password) async {
    try {
      UserCredential credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!.uid;
    } on FirebaseAuthException {
      return '';
    }
  }
}
