import 'package:flutter/material.dart';
import 'package:instagram/views/widget_tree.dart';
import 'package:instagram/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),
            FilledButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WidgetTree()));
                },
                icon: Icon(Icons.arrow_right_alt),
                label: Text('Get Started'),
            )
          ],
        ),
      )
    );
  }
}