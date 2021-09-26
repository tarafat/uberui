import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';
import 'package:uberui/screens/tripinfo.dart';

import 'searchlocation.dart';

class SearchDestination extends StatelessWidget {
  const SearchDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFF4F8F8),
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/pickup_spot.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            child: FractionallySizedBox(
              heightFactor: .2,
              widthFactor: 1,
              child: Container(
                padding: const EdgeInsets.only(
                    right: kDefaultPadding, left: kDefaultPadding),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(Size(0.9.sw, .09.sh)),
                          backgroundColor:
                              MaterialStateProperty.all(kOptionbg)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchLocation()),
                        );
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Serach destination',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 80.sp,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
