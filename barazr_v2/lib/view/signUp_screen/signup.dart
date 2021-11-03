import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:barazr_v2/route/router.dart' as route;
import 'package:google_fonts/google_fonts.dart';


class SignUpPage extends StatefulWidget {

  const SignUpPage({Key? key}) : super(key: key);
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class Responsive{
  static width(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.width*(p/100);
  }
  static height(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.height*(p/100);
  }
}

class _SignUpPageState extends State<SignUpPage> {
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
            Container(
              margin: EdgeInsets.only(top: height*0.05),
              child: Text(
                'Sign in with Phone',
                style: GoogleFonts.openSans(
                  color: bText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.03),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(bottom: 21.0), 
                      width: Responsive.width(30, context), 
                      height: 40, 
                      padding: const EdgeInsets.all(0),             
                      decoration: BoxDecoration(
                        color: bContent,
                        border: Border.all(
                          color: bBorder,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      child: Row(
                        children: [
                          CountryCodePicker(
                            initialSelection: 'KE',
                            showCountryOnly: true,
                            showFlagMain: false,
                            alignLeft: false,
                            flagWidth: 12,
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: bBorder,
                            ),
                            dialogBackgroundColor: bgBlue,
                            dialogTextStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            dialogSize: const Size(300, 500),
                            padding: const EdgeInsets.only(top: 0, bottom: 0, left: 1),
                          ),
                          const Icon(Icons.arrow_drop_down, color: Colors.black54),
                        ],
                      ),
                    ),  
                    const SizedBox(width: 5,),             
                    Container(
                      width: Responsive.width(50, context),
                      height: 40,
                      decoration: BoxDecoration(
                        color: bContent,
                        border: Border.all(
                          color: bBorder,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(3.0),
                      ),              
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14, color: bText),
                        decoration: const InputDecoration(
                          hintText: "Enter Phone no.",
                          errorText: null,
                          labelStyle: TextStyle(
                            fontSize: 20,
                            color: bText,
                          ),
                          
                          contentPadding: EdgeInsets.only(
                            left: 15,
                            top: 0,
                            right: 15,
                            bottom: 0
                          ),
                          counterText: "",
                        ),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        autofocus: false,
                      ),
                    ),
                  ]
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.06),
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
                  onPressed: () => Navigator.pushNamed(context, route.authPage,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.1),
              child: SizedBox(
                width: 300,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(
                          color: bText,
                        ),
                        text: "By signing in to barazr you are accepting our",
                      ),
                      TextSpan(
                        style: TextStyle(
                          color: pryOther,
                        ),
                        text: " Terms & Conditions",
                      ),
                    ]
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}