import 'package:flutter/material.dart';
import 'package:instagram/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding( // Add some padding around the content
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Push logout to bottom
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight, // Align plus icon to bottom right
                    children: [
                      CircleAvatar(
                        radius: 60, // Slightly smaller radius to accommodate the plus icon visually
                        backgroundImage: AssetImage('assets/images/shalom.jpg'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue, // Or Theme.of(context).primaryColor
                            shape: BoxShape.circle, // White border for separation
                          ),
                          child: InkWell( // Use InkWell for tap effect
                            onTap: () {}, //ToDo later
                            customBorder: CircleBorder(), // Match the shape for ripple effect
                            child: Padding( // Add padding inside the container for the icon
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20, // Adjust size as needed
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Eustache Kamala',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '100',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'posts',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                '1200',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'followers',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                '440',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'following',
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 16,),
              Text(
                'Science, Technology, and Engineering',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    //ToDo later
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white12,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        minimumSize: Size(120, 40)
                      ),
                      child: Text('Edit Profile'),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    //ToDo later
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      minimumSize: Size(120, 40)
                    ),
                    child: Text('Share Profile'),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    //ToDo later
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      minimumSize: Size(120, 40)
                    ),
                    child: Text('Contact'),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
