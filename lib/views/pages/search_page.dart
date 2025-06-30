import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              child: SearchBar(
                backgroundColor: WidgetStateProperty.all(Colors.grey[800]),
                hintText: 'Search...',
                leading: Icon(Icons.search),
              ),
            ),
          ],
        ),
      ),
    );
  }
}