import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';

import '../main.dart';

class TripInfo extends StatelessWidget {
  const TripInfo({Key? key}) : super(key: key);

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
              heightFactor: .5,
              widthFactor: 1,
              child: Container(
                padding: EdgeInsets.only(
                    right: kDefaultPadding, left: kDefaultPadding),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your rider is on the way',
                        style: TextStyle(
                            fontSize: 70.sp, fontWeight: FontWeight.w400)),
                    ListTile(
                      leading: Image.asset('assets/options/car.png'),
                      title: Text('UberX'),
                      subtitle: Text('Fare BDT 247.36'),
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
                              builder: (context) => const MyHomePage()),
                        );
                      },
                      child: Text(
                        'Cancel Trip',
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
