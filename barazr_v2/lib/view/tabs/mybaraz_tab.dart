import 'package:barazr_v2/global/cards.dart';
import 'package:flutter/material.dart';

class MyBarazr extends StatelessWidget {
  const MyBarazr({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 16, ),
        child: Column(
          children: const <Widget>[
            Cards(),
          ],
        ),
      )
    )
  );
}