import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/screens/selectcar.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 250.w,
            ),
            Icon(
              Icons.account_circle,
              size: 70.sp,
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              'For Me',
              style: TextStyle(
                  fontSize: 50.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 80.sp,
            )
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 12.h, right: 12.h),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .35.h,
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .35.h,
                  width: 200.w,
                  child: Image.asset('assets/images/dir.png'),
                ),
                Positioned(
                    left: 170.w,
                    child: Text('House- 1/A, Road- 2/A, Block J',
                        style: TextStyle(
                            fontSize: 70.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54))),
                Positioned(
                  left: 170.w,
                  top: 130.h,
                  child: Text(
                    'Where to?',
                    style: TextStyle(
                        fontSize: 80.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 110.h,
                  child: const Text('+',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black26,
            thickness: 1,
          ),
          ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.black12,
                thickness: 2,
              );
            },
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 50,
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
                  dense: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SelectCar()),
                    );
                  },
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.location_pin,
                      size: 35,
                    ),
                  ),
                  title: const Text('Hazrat Shahjalal International Airport',
                      overflow: TextOverflow.ellipsis),
                  subtitle: const Text(
                    'Airport - Dakshinkhan Rd, Dhaka 1229,Bangladesh',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
