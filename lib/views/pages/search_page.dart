import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>{
  TextEditingController searchController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  String? menuItems = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
    );
  }
}