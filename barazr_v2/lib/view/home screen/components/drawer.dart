import 'package:barazr_v2/route/router.dart' as route;
import 'package:barazr_v2/view/home%20screen/components/drawer_elements.dart';
import 'package:barazr_v2/view/home%20screen/components/drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const MyHeaderDrawer(),
            DrawerElement(
              text: 'Personal Settings', 
              icon: Icons.person,
              press:  () {}
            ),
            DrawerElement(
              text: 'Nofication', 
              icon: Icons.notifications_on,
              press:  () {}
            ),
            DrawerElement(
              text: 'My Barazr', 
              icon: Icons.language_outlined,
              press:  () {},
            ),
            DrawerElement(
              text: 'Saved', 
              icon: Icons.favorite,
              press:  () {}
            ),
            DrawerElement(
              text: 'Wallet', 
              icon: Icons.account_balance_wallet_rounded,
              press:  () {}
            ),
            DrawerElement(
              text: 'Metrics', 
              icon: Icons.dashboard,
              press:  () {}
            ),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, route.alertScreen,),
              icon: Image.asset('assets/icons/report.png', width: 20, height: 20,),
              label: const Text(
                "report", 
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}