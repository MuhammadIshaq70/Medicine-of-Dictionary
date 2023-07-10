import 'package:develop_medical_of_dictionary/src/Ui/Screens/Home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/colors.dart';

class MedicineDetail extends StatefulWidget {
  const MedicineDetail({super.key});

  @override
  State<MedicineDetail> createState() => _MedicineDetailState();
}

class _MedicineDetailState extends State<MedicineDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 300.sp,
                width: 380.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: Image.asset(
                      'assets/icons/icongray1.png',
                      height: 200.sp,
                      width: 200.sp,
                    ).image,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                          },
                          child: Icon(
                            Icons.navigate_before_sharp,
                            size: 49.sp,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20.sp),
                          child: Icon(Icons.menu_outlined),
                        ),
                      ],
                    ),
                    Image(
                      image: AssetImage('assets/images/5157.webp'),
                      height: 150.sp,
                      width: 150.sp,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.sp, top: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Adults Panadole',
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 80.sp,
                      ),
                      Container(
                        height: 22.sp,
                        width: 70.sp,
                        decoration: BoxDecoration(
                            color: zgreen1color,
                            borderRadius: BorderRadius.circular(19)),
                        child: Center(child: Text('Pkr.20.5')),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9.sp,
                  ),
                  const Text(
                    '20 Tablets',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Text(
                    'General Usage',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  const Text(
                    'It is typically used to relieve mild or moderate pain, such as headaches, toothache or sprains, and reduce fevers caused by illnesses such as colds ',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 28.sp,
                  ),
                  Text(
                    'Composition',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 11.sp,
                  ),
                  const Text(
                    'Paracetamol may be made by acetylation of para-aminophenol(obtained by reduction ofpara-nitrophenol) with acetic acidor acetic anhydride. ',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
