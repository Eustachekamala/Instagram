import 'package:flutter/material.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/pages/welcome_page.dart';
import 'package:instagram/views/widget_tree.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: isDarkMode ? ColorScheme.dark() : ColorScheme.light(),
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
          ),
          home: WelcomePage(),
        );
      }
    );
  }
}