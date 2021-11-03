import 'package:flutter/material.dart';
import 'package:barazr_v2/route/router.dart' as route;

class BottomNav extends StatefulWidget {
  const BottomNav({ Key? key }) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const Alignment(0,1),
          child: ClipOval(
            child: Container(
              height: MediaQuery.of(context).size.width/4.5,
              width: MediaQuery.of(context).size.width/3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(MediaQuery.of(context).size.width/4),
                  topRight: Radius.circular(MediaQuery.of(context).size.width/4),
                )
              ),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(1,1),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        
        Align(
          alignment: const Alignment(-0.98,1),

          child: Stack(
            children: [
              Align(
                alignment: const Alignment(-0.98,1),
                child: IconButton(
                  icon: const Icon(Icons.post_add_outlined),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ),
              const Align(
                alignment: Alignment(-0.98,1),
                child: Text(
                  'Posts',
                  style: TextStyle(
                    color: Colors.black,
                  )
                ),
              ),
            ],
          ),
        ),
        
        Align(
          alignment: const Alignment(0,1),

          child: Stack(
            children: [
              Align(
                alignment: const Alignment(0,0.9),
                child: IconButton(
                  icon: const Icon(Icons.favorite),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
              const Align(
                alignment: Alignment(0,0.95),
                child: Text(
                  'My Barazr',
                  style: TextStyle(
                    color: Colors.red,
                  )
                ),
              ),
            ],
          ),
        ),


        Align(
          alignment: const Alignment(0.98,1),

          child: Stack(
            children: [
              Align(
                alignment: const Alignment(0.98,0.98),
                child: IconButton(
                  icon: Image.asset('assets/icons/report.png', width: 25, height: 25,),
                  color: Colors.black,
                  onPressed: () => Navigator.pushNamed(context, route.alertScreen,),
                ),
              ),
              const Align(
                alignment: Alignment(0.98,1),
                child: Text(
                  'Report',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  )
                ),
              ),
            ],
          ),
        ),

      ]
    );
  }
}

