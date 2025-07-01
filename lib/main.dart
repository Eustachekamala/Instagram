import 'package:flutter/material.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/pages/welcome_page.dart';

void main(){
  runApp(Instagram());
}

class Instagram extends StatefulWidget{
  const Instagram({super.key});

  @override
  State<StatefulWidget> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram>{
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isDarkMode, child) =>
            MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                // Define the color scheme more explicitly
                colorScheme: isDarkMode ? ColorScheme.dark(
                  primary: Colors.white,
                  secondary: Colors.grey,
                  onSecondary: Colors.black,
                ) : ColorScheme.light(
                  primary: Colors.black,
                  secondary: Colors.grey,
                  onSecondary: Colors.white,
                ),
                brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
            home: WelcomePage(),
            ),);
  }
}