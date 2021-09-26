import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';
import 'package:uberui/screens/tripinfo.dart';

import '../main.dart';

class PickUpPoint extends StatefulWidget {
  const PickUpPoint({Key? key}) : super(key: key);

  @override
  State<PickUpPoint> createState() => _PickUpPointState();
}

class _PickUpPointState extends State<PickUpPoint> {
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
              heightFactor: .3,
              widthFactor: 1,
              child: Container(
                padding: EdgeInsets.only(
                    right: kDefaultPadding, left: kDefaultPadding),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Choose your pickup spot',
                        style: TextStyle(
                            fontSize: 70.sp, fontWeight: FontWeight.w400)),
                    Divider(
                      color: Colors.black45,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('3 Olipara Road',
                            style: TextStyle(
                                fontSize: 70.sp, fontWeight: FontWeight.w400)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12,
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text('Search',
                                style: TextStyle(
                                    fontSize: 60.sp,
                                    fontWeight: FontWeight.w400)),
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(Size(0.9.sw, .09.sh)),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.black,
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TripInfo()),
                        );
                      },
                      child: Text(
                        'Confirm Pickup',
                        style: TextStyle(fontSize: 50.sp),
                      ),
                    ),
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
