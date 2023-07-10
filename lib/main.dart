import 'package:develop_medical_of_dictionary/src/Ui/Screens/SignUp/Signup_ViewModel.dart';
import 'package:develop_medical_of_dictionary/src/Ui/Screens/login/loginViewModel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'src/Ui/Screens/onboarding/onboarding_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(400, 800),
        builder: (context, child) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => LoginViewModel()),
                ChangeNotifierProvider(create: (_) => SignUpViewModel()),
              ],
              child: GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home: const OnBoardingScreen(),
              ),
            ));
  }
}
