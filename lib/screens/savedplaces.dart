import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavePlace extends StatelessWidget {
  const SavePlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          title: const Text(
            'Choose a destination',
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.w400),
          ),
        ),
        body: Column(
          children: const [
            ListTile(
              leading: Icon(
                Icons.star_border,
                color: Colors.black,
              ),
              title: Text('Office'),
              subtitle: Text('Gulshan 1'),
            ),
            Divider(
              color: Colors.black45,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Add Saved Place',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Get to your favourite destination faster'),
            ),
            Divider(
              color: Colors.black45,
              thickness: 1,
            ),
          ],
        ));
  }
}
