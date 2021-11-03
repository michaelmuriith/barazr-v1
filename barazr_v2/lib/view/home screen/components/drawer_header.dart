import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pryBlue,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 100,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset('assets/images/Ellipse.png')),
          ),
          const Text(
            "Christine Wanjru",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on, size: 14,),
                Text(
                  "Nairobi, Kenya",
                  style: TextStyle(color: bContent, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}