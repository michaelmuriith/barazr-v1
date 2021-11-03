import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({ 
    Key? key,
    required this.sentByMe,
    required this.message
  }) 
  : super(key: key);

  final bool sentByMe;
  final String message;


  @override
  Widget build(BuildContext context) {
    Color purple = Color(0xff6c5ce7);
    Color black = Color(0xff191919);
    Color white = Colors.white;
    return Align(
      alignment: sentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width*0.75,
        padding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 10,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: sentByMe ? purple : white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:5),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                    ),
                    child: FittedBox(
                      child: Image.asset('assets/images/Ellipse.png'),
                    ),
                  ),
                ),
                Text(
                  'User Name',
                  style: TextStyle(
                    color: sentByMe ? white : purple,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, top:5, bottom: 5),
              child:  Text(
                message,
                style: TextStyle(
                  color: sentByMe ? white : purple,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.star, size: 13, color: sentByMe ? white : Colors.black ),
                      Icon(Icons.star, size: 13, color: sentByMe ? white : Colors.black),
                      Icon(Icons.star, size: 13, color: sentByMe ? white : Colors.black),
                      Icon(Icons.star_border, size: 13, color: sentByMe ? white : Colors.black),
                      Icon(Icons.star_border, size: 13, color: sentByMe ? white : Colors.black),

                    ],
                  ),
                  Text(
                    "1:10 am ",
                    style: TextStyle(
                      color: sentByMe ? white : purple,
                      fontSize: 10  ,
                    ),            
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}