import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';
import 'package:uberui/screens/savedplaces.dart';

class ChoseSavePlce extends StatelessWidget {
  const ChoseSavePlce({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: InkWell(
        splashColor: Colors.black12,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SavePlace(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.star),
            Text(
              'Choose a saved place',
              style: TextStyle(fontSize: 60.sp, fontWeight: FontWeight.w400),
            ),
            const Icon(
              Icons.navigate_next_outlined,
              color: Colors.black45,
            ),
          ],
        ),
      ),
    );
  }
}
