import 'package:develop_medical_of_dictionary/src/Ui/Screens/Home/homeScreen.dart';
import 'package:develop_medical_of_dictionary/src/Ui/Widgets/Utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LoginViewModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  interEmail() {
    _auth
        .signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    )
        .then((value) {
      Get.to(() => HomeScreen());
    }).then((value) {
      Utils().toastMessage('Successfully');
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }
}
