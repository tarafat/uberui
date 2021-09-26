import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/customs/customcolor.dart';
import 'package:uberui/screens/pickup.dart';
import 'package:uberui/screens/savedplaces.dart';
import 'package:uberui/screens/searchlocation.dart';

class SelectCar extends StatefulWidget {
  const SelectCar({Key? key}) : super(key: key);

  @override
  State<SelectCar> createState() => _SelectCarState();
}

class _SelectCarState extends State<SelectCar> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(
      seconds: 1,
    )).then((value) {
      showModalBottomSheet(
          backgroundColor: Colors.white.withOpacity(0),
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return FractionallySizedBox(
              heightFactor: 0.7,
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
                    Container(
                        height: .06.sh,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              "_______",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30.sp),
                            ),
                            Spacer(),
                            Text(
                                'Fares are slightly higher due to increased demand',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.sp)),
                          ],
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PickUpPoint()),
                        );
                      },
                      child: Container(
                        color: kOptionbg,
                        child: ListTile(
                          leading: Icon(Icons.car_repair),
                          title: Text("UberX ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50.sp)),
                          subtitle: Text("3:19pm dropoff"),
                          trailing: Text("BDT 247.36",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PickUpPoint()),
                        );
                      },
                      child: ListTile(
                        leading: Icon(Icons.car_repair),
                        title: Text("UberMoto ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50.sp)),
                        trailing: Text("BDT 95.36",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PickUpPoint()),
                        );
                      },
                      child: ListTile(
                        leading: Icon(Icons.car_repair),
                        title: Text("Uber Premium",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50.sp)),
                        subtitle: Text("3:18pm "),
                        trailing: Text("BDT 288.6",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                    ),
                    const Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Container(
                      height: .12.sh,
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: InkWell(
                        splashColor: Colors.black12,
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const SavePlace(),
                          //   ),
                          // );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.card_membership),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: kDefaultPadding),
                              child: Text(
                                'Add payment method',
                                style: TextStyle(
                                    fontSize: 60.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Spacer(),
                            const Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  Size(0.8.sw, .09.sh)),
                              backgroundColor: MaterialStateProperty.all(
                                Colors.black,
                              )),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PickUpPoint()),
                            );
                          },
                          child: Text(
                            'Confirm UberX',
                            style: TextStyle(fontSize: 50.sp),
                          ),
                        ),
                        Container(
                          color: Colors.black12,
                          height: .09.sh,
                          child: IconButton(
                            color: Colors.black,
                            icon: const Icon(Icons.car_rental),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PickUpPoint()),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    });

    // TODO: implement initState
  }

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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          'assets/images/maps.jpg',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
