import 'package:barazr_v2/constant.dart';
import 'package:barazr_v2/view/home%20screen/components/bottom_nav.dart';
import 'package:barazr_v2/view/home%20screen/components/drawer.dart';
import 'package:barazr_v2/view/tabs/mybaraz_tab.dart';
import 'package:barazr_v2/view/tabs/pending_tab.dart';
import 'package:barazr_v2/view/tabs/sugestion_tabs.dart';
import 'package:flutter/material.dart';
import 'package:barazr_v2/route/router.dart' as route;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          elevation: 1,
          iconTheme: const IconThemeData(color: bText),
          actions: [
            const Icon(Icons.search), 
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: TextButton.icon(
                    onPressed: () => Navigator.pushNamed(context, route.addBarazrPage,),
                    icon: const Icon(Icons.add, size: 18, color: Colors.green,),
                    label: const Text(
                      "Create Barazr",
                      style: TextStyle(
                        color: Colors.black,
                      )
                    ),
                  )
                )
              ]
            )
          ],
          title: SizedBox(
            height: 35,
            child: Image.asset('assets/images/logo.png')
          ), 
          bottom: const TabBar(
            indicatorColor: pryOther,
            labelColor: pryBlue,
            tabs: [
              Tab(text: 'My Barazr',),
              Tab(text: 'Sugestions',),
              Tab(text: 'Pending',),
            ]
          ), 
        ), 
        body: Stack(
          children: const <Widget>[
            TabBarView(
              children: [
                MyBarazr(),
                Sugestion(),
                Pending(),
              ]
            ),

            Align(
              alignment: Alignment(0.0, 1),
              child: BottomNav()
            ),
          ]
        ),
      ),
    );
  }
}