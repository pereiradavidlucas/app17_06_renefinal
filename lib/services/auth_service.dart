import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier{
   final FirebaseAuth _auth = FirebaseAuth.instance;

  // Register with email and password
  Future<User?> register(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print('Registration error: $e');
      return null;
    }
  }

  // Sign in with email and password
  Future<User?> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }

  // Sign out
  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Logout error: $e');
    }
  }
}
