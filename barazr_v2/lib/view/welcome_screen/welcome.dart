import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:barazr_v2/route/router.dart' as route;

class Welcome extends StatelessWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Center(
        child: Stack (
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('assets/images/splash.png'),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, 0.8),
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
                onPressed: () => Navigator.pushNamed(context, route.signUpPage,),
              ),
            ),
          ],
        ),

      ),
    );
  }
}