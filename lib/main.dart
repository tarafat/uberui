import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uberui/widgets/aboutu.dart';
import 'package:uberui/widgets/header.dart';
import 'package:uberui/widgets/options.dart';
import 'package:uberui/widgets/savedplace.dart';
import 'package:uberui/widgets/togo.dart';

import 'customs/customcolor.dart';
import 'screens/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 1920),
      builder: () => const MaterialApp(
        color: Colors.black,
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kappBarcolor,
      ),
      drawer: const Drawer(child: DrawerScreen()),
      body: SafeArea(
          child: ListView(
        children: const [
          Header(),
          Options(),
          WhereToWidget(),
          ChoseSavePlce(),
          AroundYou()
        ],
      )),
    );
  }
}
