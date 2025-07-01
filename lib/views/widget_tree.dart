import 'package:flutter/material.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/pages/home_page.dart';
import 'package:instagram/views/pages/profile_page.dart';
import 'package:instagram/views/pages/add_page.dart';
import 'package:instagram/views/pages/reels_page.dart';
import 'package:instagram/views/pages/settings_page.dart';
import 'package:instagram/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  AddPage(),
  ReelsPage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget{
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 30
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
              },
              icon: ValueListenableBuilder(
                  valueListenable: isDarkModeNotifier,
                  builder: (context, isDarkMode, child){
                    return
                      isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode);
                  }
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite_border)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.send)
          ),
          IconButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SettingsPage(
                    title: 'Settings',
                )));
              },
              icon: Icon(Icons.settings))
        ],
        centerTitle: false,
      ),

      body: ValueListenableBuilder(valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages[selectedPage];
          },),
      bottomNavigationBar: NavBarWidget()
    );
  }
}