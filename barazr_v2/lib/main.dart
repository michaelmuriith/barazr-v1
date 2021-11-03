import 'package:barazr_v2/theme.dart';
import 'package:flutter/material.dart';
import 'package:barazr_v2/route/router.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      onGenerateRoute: route.controller,
      initialRoute: route.welcomePage,
    );
  }
}
