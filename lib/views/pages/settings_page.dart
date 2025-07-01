import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{
  const SettingsPage({super.key, required this.title});

  final String title;
  @override
  State<StatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>{
  TextEditingController searchController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  String? menuItems = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Snackbar'),
                        duration: Duration(seconds: 5),
                        behavior: SnackBarBehavior.floating,
                      )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Open Snackbar', style: TextStyle(color: Colors.black),)
              ),
              ElevatedButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Alert'),
                            title: Text('Alert'),
                            actions: [
                              FilledButton(onPressed: (){
                                Navigator.pop(context);
                              },
                                  child: Text('Close')
                              )
                            ],
                          );
                        },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Open Dialog', style: TextStyle(color: Colors.black),)
              ),
              DropdownButton(
                  value: menuItems,
                  hint: Text('Select an item'),
                  items: [
                    DropdownMenuItem(
                      value: 'Item 1',
                      child: Text('Item 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Item 2',
                      child: Text('Item 2'),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      menuItems = value;
                    });
                  }
              ),
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text(searchController.text),

              CheckboxListTile.adaptive(
                tristate: true,
                title: Text('Select'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),

              SwitchListTile.adaptive(
                title: Text('Switch me'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },),

              Slider.adaptive(
                value: sliderValue,
                divisions: 10,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },),

              InkWell(
                  onTap: () {
                    print('Image tapped');
                  },
                  child: Container(
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Kids.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ),
              FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print('Button tapped');
                },
                icon: Icon(Icons.add),
                label: Text('Add'),
              ),
            ],
          ),
        ),
      )
    );
  }
}