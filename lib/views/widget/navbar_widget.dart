import 'package:flutter/material.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/pages/add_page.dart';
import 'package:instagram/views/pages/home_page.dart';
import 'package:instagram/views/pages/profile_page.dart';
import 'package:instagram/views/pages/search_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<StatefulWidget> createState() => _NavBarState();
}

List<Widget> pages = [
  HomePage(),
  SearchPage(),
  AddPage(),
  ProfilePage()
];

class _NavBarState extends State<NavBar>{
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          indicatorColor: Colors.white30,
          destinations: [
          NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.search),
              label: "Search"),
          NavigationDestination(
              icon: Icon(Icons.add_box),
              label: "Add"),
          NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      }
    );
  }
}