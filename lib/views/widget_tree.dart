import 'package:flutter/material.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/widget/navbar_widget.dart';

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
              onPressed: (){
                  isDarkModeNotifier.value = !isDarkModeNotifier.value;
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
              onPressed: (){},
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