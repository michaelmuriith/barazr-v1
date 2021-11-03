import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({ Key? key }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();


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

class _SignUpFormState extends State<SignUpForm> {
  
  @override
  Widget build(BuildContext context) {
    return Form(
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
                    dialogBackgroundColor: Colors.black26,
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
                    fontSize: 24,
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
    );
  }
}