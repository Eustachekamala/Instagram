import 'package:flutter/material.dart';
import 'package:instagram/data/constants.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(KConstants.themeModeKey);
    isDarkModeNotifier.value = repeat ?? false;
  }

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