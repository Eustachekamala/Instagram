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
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Activity Viewer'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFirst = !isFirst;
                });
              },
              icon: Icon(Icons.switch_access_shortcut))
        ],
      ),
      body: FutureBuilder(future: fetchActivity(), builder: (context, AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          Activity activity = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: AnimatedCrossFade(firstChild: Column(
              children: [
                Text(activity.activity),
                Text(activity.type),
                Text(activity.participants.toString()),
                Text(activity.accessibility),
                Text(activity.duration),
                Text(activity.price.toString()),
                Text(activity.link),
              ],
            ), secondChild: Center(
              child: Image.asset('assets/images/Kids.jpeg'),
            ), crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond, duration: Duration(seconds: 1),)
          );
        } else if(snapshot.hasError){
          return Center(
              child: Text('${snapshot.error}')
          );
        }
        return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            )
        );
      },)
    );
  }
}