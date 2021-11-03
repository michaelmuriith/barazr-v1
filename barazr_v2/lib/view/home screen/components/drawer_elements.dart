import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerElement extends StatelessWidget {
  const DrawerElement({ 
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press, 
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: bText,
                  size: 20,
                ),
                const SizedBox(width: 20,),
                Text(
                  text,
                  style: GoogleFonts.roboto(
                    color: bText,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  )
                ),
              ],
            ),
          ),
          const Divider(
            height: 4,
          ),
        ],
        
      )
        
    );
  }
}