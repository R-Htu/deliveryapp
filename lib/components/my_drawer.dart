import 'package:deliveryapp/components/my_drawer_tile.dart';
import 'package:deliveryapp/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_sharp,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home list tile
          MyDrawerTile(
              icon: Icons.home,
              text: 'H O M E',
              onTap: () => Navigator.pop(context)),
          MyDrawerTile(
              icon: Icons.favorite,
              text: 'F A V O U R I T E ',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              }),
          MyDrawerTile(
              icon: Icons.recommend, text: 'R E C O M M E N D ', onTap: () {}),
          //seting list tile
          MyDrawerTile(
              icon: Icons.settings,
              text: 'S E T T I N G',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              }),
          Spacer(),
          //logout list tile
          MyDrawerTile(icon: Icons.logout, text: 'L O G O U T ', onTap: () {}),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
