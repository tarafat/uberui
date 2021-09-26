import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';
import 'package:uberui/screens/searchlocation.dart';

class WhereToWidget extends StatelessWidget {
  const WhereToWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
      child: Container(
        height: 200.h,
        color: kOptionbg,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                splashColor: Colors.black12,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchLocation()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding, right: kDefaultPadding),
                  child: Text(
                    'Where To?',
                    style:
                        TextStyle(fontSize: 80.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                width: 2.w,
                height: 60.h,
                color: Colors.black12,
              ),
              InkWell(
                splashColor: Colors.black12,
                onTap: () => showModalBottomSheet(
                    backgroundColor: Colors.white.withOpacity(0),
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return FractionallySizedBox(
                        heightFactor: 0.55,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Schedule a Ride',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 100.sp),
                              ),
                              const Divider(
                                color: Colors.black12,
                                thickness: 1,
                              ),
                              Text(
                                'Sun, Sep 26',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 60.sp),
                              ),
                              const Divider(
                                color: Colors.black12,
                                thickness: 1,
                              ),
                              Text(
                                '1:55 PM - 2:05 PM',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 60.sp),
                              ),
                              const Divider(
                                color: Colors.black12,
                                thickness: 1,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          Size(0.9.sw, .09.sh)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.black,
                                      )),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SearchLocation()),
                                    );
                                  },
                                  child: Text(
                                    'Set Pickup Time',
                                    style: TextStyle(fontSize: 50.sp),
                                  ))
                            ],
                          ),
                        ),
                      );
                    }),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.watch_later_rounded,
                        size: 35,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'Now',
                        style: TextStyle(
                            fontSize: 50.sp, fontWeight: FontWeight.w600),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
