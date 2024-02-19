import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (int index) {
          setState(() {
            navDrawerIndex = index;
          });
          final MenuItem item = appMenuItems[index];
          context.push(item.link);
          widget.scaffoldKey.currentState!.closeDrawer();
        },
        children: [
          const Padding(
              padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
              child: Text("Inicio")),
          ...appMenuItems.sublist(0,3).map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon), label: Text(e.title))),
          const Padding(padding: EdgeInsets.fromLTRB(28, 16, 28, 10), child: Divider(),),
          const Padding(
              padding: EdgeInsets.fromLTRB(28, 20, 16, 20),
              child: Text("Extras")),
           ...appMenuItems.sublist(3).map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon), label: Text(e.title))),
        ]);

  }
}
