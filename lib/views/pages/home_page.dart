import 'package:flutter/material.dart';
import 'package:instagram/views/widgets/hero_widget.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget()
          ],
        ),
    );
  }
}