import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';

class NameForm extends StatefulWidget {
  const NameForm({ Key? key }) : super(key: key);

  @override
  _NameFormState createState() => _NameFormState();


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

class _NameFormState extends State<NameForm> {
  
  @override
  Widget build(BuildContext context) {
    return Form(
      child:Container(
        width: Responsive.width(80, context),
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
            hintText: "Enter Full Names",
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
          keyboardType: TextInputType.name,
          autofocus: false,
        ),
      ),
    );
  }
}