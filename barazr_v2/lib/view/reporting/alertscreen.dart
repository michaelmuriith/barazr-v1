import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:barazr_v2/route/router.dart' as route;

class ReportAlert extends StatelessWidget {
  const ReportAlert({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 35,
          child: Image.asset('assets/images/logo.png')
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(width: MediaQuery.of(context).size.width, child: Image.asset('assets/images/bg.png'))
          ),
          Align(
            alignment: const Alignment(0, 0),
            child: Text(
              'Join The Fight',
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff8d8d8d),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.9,
              child: Text(
                "Corruption in the public sector is responsible for the loss of trust in the government and the service it provides, report those involved to build a better Kenya.",
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: const Color(0xff8d8d8d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 30, right: 30,
                ),
                primary: pryBlue,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),),
              ),
              icon: const Text(
                "Next",
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: "Roboto"
                ),
              ),
              label: Icon(
                Icons.arrow_forward_sharp,
                size: 20,
                color: Theme.of(context)
                .textTheme
                .bodyText1!
                .color!
                .withOpacity(1),
              ),
              onPressed: () => Navigator.pushNamed(context, route.reportScreen,),
            ),
          ),
        ],
      ),
    );
  }
}