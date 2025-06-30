import 'package:flutter/material.dart';
import 'package:instagram/data/notifiers.dart';

class NavBarWidget extends StatefulWidget{
  const NavBarWidget({super.key});

  @override
  State<StatefulWidget> createState() => _NavBarState();
}

class _NavBarState extends State<NavBarWidget>{
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return NavigationBar(
              destinations: [
                NavigationDestination(
                    icon: Icon(Icons.home),
                    label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.search),
                    label: 'Search'),
                NavigationDestination(
                    icon: Icon(Icons.add_box),
                    label: 'Add'),
                NavigationDestination(
                    icon: Icon(Icons.play_circle_fill),
                    label: 'Reels'),
                NavigationDestination(
                    icon: Icon(Icons.person),
                    label: 'Profile'),
              ],
            onDestinationSelected: (int value){
                selectedPageNotifier.value = value;
            },
            selectedIndex: selectedPage,
          );
        },
    );
  }
}