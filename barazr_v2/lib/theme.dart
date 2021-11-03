import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: pryBlue,
    scaffoldBackgroundColor: bgBlue,
    iconTheme: const IconThemeData(color: bContent),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: bContent),
    colorScheme: const ColorScheme.light(
      primary: bgBlue,
      secondary: secBlue,
      error: bError,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: pryOther.withOpacity(0.7),
      unselectedItemColor: bContent.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: pryOther),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: pryBlue,
    scaffoldBackgroundColor: bgBlue,
    iconTheme: const IconThemeData(color: bContent),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: bContent),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: bgBlue,
      secondary: secBlue,
      error: bError,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: bContent,
      selectedItemColor: Colors.white70,
      unselectedItemColor: bContent.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: pryOther),
      showUnselectedLabels: true,
    ),
  );
}