import 'package:flutter/material.dart';
import 'package:instagram/data/constants.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/pages/chat_page.dart';
import 'package:instagram/views/widget/navbar_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WidgetTree extends StatefulWidget{
  const WidgetTree({super.key});

  @override
  State<StatefulWidget> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Instagram",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontStyle: FontStyle.italic
            )
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () async {
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool(KConstants.themeModeKey, isDarkModeNotifier.value);
              },
              icon: ValueListenableBuilder(
                  valueListenable: isDarkModeNotifier,
                  builder: (context, isDarkMode, child) {
                    return
                      isDarkMode ? Icon(Icons.dark_mode) : Icon(Icons.light_mode);
                  },)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite)),
          IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                       return
                         ChatPage();
                    },)
                );
              },
              icon: Icon(Icons.message)),
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages[selectedPage];
          },),
      bottomNavigationBar: NavBar(),
    );
  }
}