import 'package:barazr_v2/view/chat_screen/chatscreen.dart';
import 'package:barazr_v2/view/create_barazr/create.dart';
import 'package:barazr_v2/view/enter_username/username.dart';
import 'package:barazr_v2/view/home%20screen/home.dart';
import 'package:barazr_v2/view/phone_auth/auth.dart';
import 'package:barazr_v2/view/reporting/alertscreen.dart';
import 'package:barazr_v2/view/reporting/reportscreen.dart';
import 'package:barazr_v2/view/signUp_screen/signup.dart';
import 'package:barazr_v2/view/welcome_screen/welcome.dart';
import 'package:flutter/material.dart';


//route names
const String welcomePage = 'welcome';
const String signUpPage = 'signUp';
const String loginPage = 'login';
const String homePage = 'homes';
const String settingsPage = 'settings';
const String authPage = 'auth';
const String namePage = 'name';
const String addBarazrPage = 'ddBarazr';
const String chatScreen = 'join';
const String alertScreen = 'alert';
const String reportScreen = 'report';


//control
Route<dynamic> controller(RouteSettings settings){
  switch (settings.name) {
    case welcomePage :
      return MaterialPageRoute(builder: (context) => const Welcome());
    case signUpPage :
      return MaterialPageRoute(builder: (context) => const SignUpPage());
    case authPage :
      return MaterialPageRoute(builder: (context) => const AuthPage());
    case namePage :
      return MaterialPageRoute(builder: (context) => const NamePage());
    case chatScreen :
      return MaterialPageRoute(builder: (context) => const ChatScreen());
    case homePage :
      return MaterialPageRoute(builder: (context) => const HomePage());     
    case addBarazrPage :
      return MaterialPageRoute(builder: (context) => const CreateBarazr());     
    case alertScreen :
      return MaterialPageRoute(builder: (context) => const ReportAlert());     
    case reportScreen :
      return MaterialPageRoute(builder: (context) => const ReportScreen());     
    default:
    throw('this route name does not exist');
  }
}
