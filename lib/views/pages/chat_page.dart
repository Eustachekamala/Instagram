import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:instagram/data/classes/activity_class.dart';

class ChatPage extends StatefulWidget{
  const ChatPage({super.key});

  @override
  State<StatefulWidget> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>{
  @override
  void initState() {
    fetchActivity();
    super.initState();
  }

  Future<Activity> fetchActivity() async{
    final response = await http.get(Uri.https('bored-api.appbrewery.com' , '/random', {'q': '{http}'}));
    if(response.statusCode == 200){
      //if the server did return a 200 OK response, then parse the JSON.
      return Activity.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else{
      throw Exception('Failed to load activity');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(future: fetchActivity(), builder: (context, AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          return Text(snapshot.data!.activity);
        } else if(snapshot.hasError){
          return Center(
              child: Text('${snapshot.error}')
          );
        }
        return Center(child: CircularProgressIndicator());
      },)
    );
  }
}