import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:barazr_v2/route/router.dart' as route;

class Responsive{
  static width(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.width;
  }
  static height(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.height;
  }
}

class AuthPage extends StatelessWidget {
  const AuthPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
  
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: MediaQuery.of(context).size.width*0.45,),
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: bText,
                  ),
                  children: [
                    TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      text: "Check you Phone ! \n",
                    ),
                    
                    TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      text: "We have sent you a message.",
                    ),
                  ]
                )
              ),
              const SizedBox(
                height: 40,
              ),
              otpField(context),
              const SizedBox(
                height: 34,
              ),
              ElevatedButton.icon(
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
                onPressed: () => Navigator.pushNamed(context, route.namePage,),
              ),
                            
              const SizedBox(
                height: 34,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: bText,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: "Didn't receive it ? ",
                    ),
                    
                    TextSpan(
                      style: TextStyle(
                        color: pryOther,
                      ),
                      text: "Resend",
                    ),
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );      
  }
  Widget otpField(BuildContext context) {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width - 34,
      fieldWidth: 50,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: const Color(0xffffffff),
        borderColor: Colors.black12,
      ),
      style: const TextStyle(fontSize: 17, color: Colors.black),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }
}