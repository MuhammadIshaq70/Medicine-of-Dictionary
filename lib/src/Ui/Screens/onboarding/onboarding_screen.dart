import 'package:develop_medical_of_dictionary/src/Ui/Screens/SignUp/signup_Screen.dart';
import 'package:develop_medical_of_dictionary/src/Ui/Screens/login/loginscreen.dart';
import 'package:develop_medical_of_dictionary/src/Ui/Widgets/containerButton.dart';
import 'package:develop_medical_of_dictionary/src/core/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: zappbarcolor,
          title: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.sp),
                child: Container(
                  height: 24.sp,
                  width: 40.sp,
                  decoration: BoxDecoration(
                      color: zgreen1color,
                      borderRadius: BorderRadius.circular(9)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'M',
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'D',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                'MEDICAL',
                style: TextStyle(
                  color: zgreen1color,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'DICTIONARY',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                child: Image.asset(
                  'assets/images/dashbord.png',
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  //width: 60,
                ),
              ),
              Text(
                'Get your best',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600, fontSize: 32.59.sp),
              ),
              Text(
                'fancy watch for you',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600, fontSize: 29.59.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create an account to comment on\n articles, manage your collection\n and more',
                    style: GoogleFonts.openSans(
                        color: Color(0xff9E9E9E),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 32.sp,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: CustomButton(
                  color1: zgreen1color,
                  text: 'CREATE ACCOUNT',
                ),
              ),
              SizedBox(
                height: 32.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account ?'),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      ' Login',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
