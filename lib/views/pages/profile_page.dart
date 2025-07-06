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
          Center(
            child: Text(
              'Profile Page Content',
              style: TextStyle(fontSize: 18),
            ),
          ),

          Row(
            children: [
              Expanded( // Wrap TextButton with Expanded
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[700], // Slightly darker grey
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15), // Increased vertical padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fixedSize: Size.fromHeight(50), // Or use padding to control height
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomePage();
                        },
                      ),
                          (Route<dynamic> route) => false, // Remove all previous routes
                    );
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
