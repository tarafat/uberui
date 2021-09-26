import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: MediaQuery.of(context).size.height * .40,
        color: const Color(0xFF0B0B0B),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Container(
                        height: 120.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/johndoe.jpg',
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'John Doe',
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: 80.sp,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Divider(
                  color: Colors.white24,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
                child: Row(
                  children: [
                    Text(
                      'Message',
                      style: TextStyle(
                          fontSize: 70.sp,
                          color: kTextColor,
                          fontWeight: FontWeight.w300),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: kDefaultPadding),
                      child: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.white24,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Divider(
                  color: Colors.white24,
                  thickness: 1,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, top: 12, bottom: 15),
                child: Text(
                  'Do more with your account',
                  style: TextStyle(color: Colors.white38),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Make money driving',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * .60,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 12),
              height: MediaQuery.of(context).size.height * .52,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Trips',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 90.sp,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 90.sp,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Wallet',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 90.sp,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 90.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),
            SizedBox(
              height: 55.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Legal'),
                    Text(
                      'v4.306.10003',
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
