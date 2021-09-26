import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';
import 'package:uberui/screens/searchdestination.dart';

class AroundYou extends StatelessWidget {
  const AroundYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Text(
              'Around you',
              style: TextStyle(fontSize: 70.sp, fontWeight: FontWeight.w500),
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchDestination()),
                );
              },
              child: Image.asset('assets/images/aroundumaps.png'))
        ],
      ),
    );
  }
}
