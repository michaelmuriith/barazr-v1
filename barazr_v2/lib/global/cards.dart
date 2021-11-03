import 'package:barazr_v2/constant.dart';
import 'package:flutter/material.dart';
import 'package:barazr_v2/route/router.dart' as route;
class Cards extends StatefulWidget {
  const Cards({ Key? key }) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 150,
      width: width*0.9,
      margin: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(1, -1),
            child: IconButton(
              icon: const Icon(Icons.close),
              iconSize: 14.0,
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          const Align(
            alignment: Alignment(-1.0, -1.0),
            child: Padding(
              padding: EdgeInsets.only(top:5.0, left: 10),
              child: Text(
                'Reconstruction of Mai Mahiu Road',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                )
              ),
            ),
          ),
          const Align(
            child: Padding(
              padding: EdgeInsets.only(top:5.0, left: 10),
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.consetetur sadipscing elitr, sed diam nonumy eirmod.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-1.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:0),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.yellow,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:40.0),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:60.5),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orange,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:80),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pink,
                      )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:110),
                    child: Text(
                      '+263',
                      style: TextStyle(
                        color: pryOther,
                        fontSize: 15,
                      )
                    ),
                  )
                ]
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 18,
                width: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(
                      left: 0, right: 0,
                    ),
                    primary: pryBlue,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),),
                  ),
                  onPressed: () => Navigator.pushNamed(context, route.chatScreen,),

                  child: const Text(
                    'Join',
                    style: TextStyle(
                      fontSize: 10,
                    )
                  ),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}