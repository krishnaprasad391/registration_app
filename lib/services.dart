import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> register({
  required String name,
  required String email,
  required String password,
  required String confirm,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("signup successful")));
  }
  catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())));
  }
}

Future<void> lin({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("login successfull")));
  }catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())));
  }}

Future<void> send({
  required String email,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Link sent successfull")));
  }catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())));
  }}