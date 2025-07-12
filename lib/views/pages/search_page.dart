import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SearchBar(
            onTap: () {

            },
            onChanged: (value) {},
            hintText: "Search",
            leading: Icon(Icons.search),
            trailing: [
              Icon(Icons.filter_list),
              Icon(Icons.more_vert)
            ],
          )
        ],
      )
    );
  }
}