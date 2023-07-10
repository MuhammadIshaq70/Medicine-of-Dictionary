import 'package:develop_medical_of_dictionary/src/Ui/Screens/Home/homeScreen.dart';
import 'package:develop_medical_of_dictionary/src/Ui/Screens/login/loginscreen.dart';
import 'package:develop_medical_of_dictionary/src/Ui/Widgets/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpViewModel extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailnameController = TextEditingController();
  TextEditingController passwordnameController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  Creataccount() {
    _auth
        .createUserWithEmailAndPassword(
      email: emailnameController.text,
      password: passwordnameController.text,
    )
        .then((value) {
      Get.to(() => LoginScreen());
    }).then((value) {
      Utils().toastMessage('Successfully');
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }
}
