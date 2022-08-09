import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:untitled2/pages/home.dart';
import 'package:untitled2/pages/settings.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStayle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Homepage',
          baseStyle: myTextStayle,
          colorLineSelected: Colors.deepPurple,
          selectedStyle: TextStyle(),
        ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: myTextStayle,
          colorLineSelected: Colors.deepPurple,
          selectedStyle: TextStyle(),
        ),
        SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 30,
        contentCornerRadius: 50,
        backgroundColorMenu: Colors.black87);
  }
}
