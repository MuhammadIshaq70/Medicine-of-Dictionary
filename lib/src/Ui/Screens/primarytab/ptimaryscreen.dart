import 'package:develop_medical_of_dictionary/src/Ui/Screens/Home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/colors.dart';
import '../Medicine Detail/medicinDetail.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key});

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 287.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(
                    'assets/icons/icon2.png',
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
                      SizedBox(
                        width: 60.sp,
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
                  SizedBox(
                    height: 10.sp,
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
                          setState(() {
                            selectIndex = 0;
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => PrimaryScreen()));
                        },
                        child: Container(
                          height: 30.sp,
                          width: 110.sp,
                          decoration: BoxDecoration(
                              color: selectIndex == 0
                                  ? Colors.green.shade400
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                              child: Text(
                            'Primary',
                            style: TextStyle(
                                color: selectIndex == 0
                                    ? Colors.white
                                    : Colors.grey),
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectIndex = 1;
                          });
                        },
                        child: Container(
                          height: 30.sp,
                          width: 110.sp,
                          decoration: BoxDecoration(
                              color: selectIndex == 1
                                  ? Colors.green.shade400
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                              child: Text(
                            'Secondary',
                            style: TextStyle(
                                color: selectIndex == 1
                                    ? Colors.white
                                    : Colors.grey),
                          )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            selectIndex == 0
                ? Expanded(
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
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    fontWeight:
                                                        FontWeight.w600)),
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
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            SizedBox(
                                              width: 65.sp,
                                            ),
                                            Text('20 Tablet',
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.bold))
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
                                                      BorderRadius.circular(
                                                          19)),
                                              child:
                                                  Center(child: Text('More..')),
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
                : Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 13, right: 10, bottom: 10),
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
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            SizedBox(
                                              width: 60.sp,
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.favorite_border,
                                                size: 22.sp,
                                                color: Colors.red,
                                              ),
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
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            SizedBox(
                                              width: 65.sp,
                                            ),
                                            Text('20 Tablet',
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.bold))
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
                                                      BorderRadius.circular(
                                                          19)),
                                              child:
                                                  Center(child: Text('More..')),
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
                        })),
          ],
        ),
      ),
    );
  }
}
