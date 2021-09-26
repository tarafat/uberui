import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kappBarcolor,
      height: MediaQuery.of(context).size.height * 0.28,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Get out and about\n\n',
                  style: TextStyle(
                      fontSize: 100.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: 'Stepping out? We\'ll help get you\n',
                  style: TextStyle(
                      fontSize: 60.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: 'there and back again.\n \n',
                  style: TextStyle(
                      fontSize: 60.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: 'Ride with Uber -->',
                  style: TextStyle(
                      fontSize: 60.sp,
                      color: kTextColor,
                      fontWeight: FontWeight.w500),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
