import 'package:flutter/material.dart';
import 'package:uberui/customs/customcolor.dart';
import 'package:uberui/resueable/option.dart';
import 'package:uberui/screens/searchlocation.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchLocation()),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            OptionWidget(
              image: 'assets/options/car.png',
              desc: 'Ride',
            ),
            OptionWidget(
              image: 'assets/options/package.png',
              desc: 'Packages',
            ),
            OptionWidget(
              image: 'assets/options/reantacar.png',
              desc: 'Rentals',
            ),
            OptionWidget(
              image: 'assets/options/intercity.png',
              desc: 'Intercity',
            ),
          ],
        ),
      ),
    );
  }
}
