import 'package:develop_medical_of_dictionary/src/Ui/Screens/Medicine%20Detail/medicinDetail.dart';
import 'package:develop_medical_of_dictionary/src/Ui/Screens/primarytab/ptimaryscreen.dart';
import 'package:develop_medical_of_dictionary/src/core/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var bool;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 477.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(
                    'assets/icons/icon1.png',
                    height: 200.sp,
                    width: 200.sp,
                  ).image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.sp),
                    child: Row(
                      children: [
                        // Icon(
                        //   Icons.navigate_before_sharp,
                        //   size: 49.sp,
                        // ),
                        SizedBox(
                          width: 80.sp,
                        ),
                        Text(
                          'Medical Dictionary',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(
                          width: 60.sp,
                        ),
                        Icon(Icons.menu_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Container(
                    height: 150.sp,
                    width: 318.sp,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Image.asset(
                          'assets/images/madecin.png',
                          height: 200.sp,
                          width: 200.sp,
                        ).image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Medicine name',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PrimaryScreen()));
                        },
                        child: Container(
                          height: 30.sp,
                          width: 110.sp,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: const Center(
                              child: Text(
                            'Primary',
                            style: TextStyle(color: Colors.grey),
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30.sp,
                        width: 110.sp,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: const Center(
                            child: Text(
                          'Secondary',
                          style: TextStyle(color: Colors.grey),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Text(
              'Popular Medicine',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 120.sp,
                        width: 340.sp,
                        decoration: BoxDecoration(
                            color: zgreen3color,
                            borderRadius: BorderRadius.circular(19)),
                        child: Row(
                          children: [
                            Container(
                              height: 120.sp,
                              width: 120.sp,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: Image.asset(
                                      'assets/images/5157.webp',
                                      // height: 200.sp,
                                      // width: 200.sp,
                                    ).image,
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(19)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 7.sp,
                                  ),
                                  Text(
                                    'Priamry Name',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  Row(
                                    children: [
                                      Text('Panadole Tablet',
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(
                                        width: 60.sp,
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        size: 22.sp,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Text(
                                    'Priamry Name',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  Row(
                                    children: [
                                      Text('Paracetamole',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(
                                        width: 65.sp,
                                      ),
                                      Text('20 Tablet',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50.sp),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MedicineDetail()));
                                      },
                                      child: Container(
                                        height: 22.sp,
                                        width: 60.sp,
                                        decoration: BoxDecoration(
                                            color: zgreen1color,
                                            borderRadius:
                                                BorderRadius.circular(19)),
                                        child: Center(child: Text('More..')),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                    SizedBox(
                      height: 10,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
