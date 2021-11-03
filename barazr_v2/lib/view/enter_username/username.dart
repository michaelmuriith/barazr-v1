import 'package:barazr_v2/constant.dart';
import 'package:barazr_v2/view/enter_username/form.dart';
import 'package:flutter/material.dart';
import 'package:barazr_v2/route/router.dart' as route;
import 'package:google_fonts/google_fonts.dart';


class NamePage extends StatelessWidget {
  const NamePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: height*0.1),
              child: Image.asset('assets/images/logo.png', width: width*0.65,),
            ),
            Text(
              'Almost done !',
              style: GoogleFonts.openSans(
                  color: pryOther,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.02),
              child: Center(
                child: Text(
                  'Enter a username that will appear \n in the barazr',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    color: bText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.05),
              child: const NameForm(),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.1),
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
                  onPressed: () => Navigator.pushNamed(context, route.homePage,),
              ),
            ),
            // Align(
            //   alignment: const Alignment(0.0, 0.8),
            //   child: SizedBox(
            //     width: 300,
            //     child: RichText(
            //       textAlign: TextAlign.center,
            //       text: const TextSpan(
            //         children: [
            //           TextSpan(
            //             style: TextStyle(
            //               color: bText,
            //             ),
            //             text: "By signing in to barazr you are accepting our",
            //           ),
            //           TextSpan(
            //             style: TextStyle(
            //               color: pryOther,
            //             ),
            //             text: " Terms & Conditions",
            //           ),
            //         ]
            //       )
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}