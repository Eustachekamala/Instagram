import 'package:flutter/material.dart';

class AddPage extends StatefulWidget{
  const AddPage({super.key});

  @override
  State<StatefulWidget> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Add Page'),
    );
  }
}