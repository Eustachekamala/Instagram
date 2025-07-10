import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget{
  const ChatPage({super.key});

  @override
  State<StatefulWidget> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>{
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async{
    //this page uses the Bored Api documentation
    var url = Uri.https('bored-api.appbrewery.com' , '/random', {'q': '{http}'});
    var response = await http.get(url);
    if(response.statusCode == 200){
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['activity'];
      print(itemCount);
    }else{
      print('Request failed with status: ${response.statusCode}');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Chat Page'),
          ],
        )
      ),
    );
  }
}