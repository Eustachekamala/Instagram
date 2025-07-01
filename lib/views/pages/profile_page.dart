import 'package:flutter/material.dart';
import 'package:instagram/data/notifiers.dart';
import 'package:instagram/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage())
              );
            },
            title: Text('Logout'),
          )
        ],
      )
    );
  }
}