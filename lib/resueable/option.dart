import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';

class OptionWidget extends StatelessWidget {
  final String image;
  final String desc;

  const OptionWidget({
    Key? key,
    required this.image,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 250.w,
          height: 200.h,
          decoration: BoxDecoration(
              color: kOptionbg, borderRadius: BorderRadius.circular(10.r)),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 40.sp,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
