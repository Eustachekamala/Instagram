import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Example list of post image paths
  final List<String> postImagePaths = [
    'assets/images/Ankara.jpeg',
    'assets/images/Ankara.jpeg',
    'assets/images/Ankara.jpeg',
    'assets/images/Kids.jpeg',
    'assets/images/Kids.jpeg',
    'assets/images/Kids.jpeg',
    'assets/images/michael.jpg',
    'assets/images/michael.jpg',
    'assets/images/michael.jpg',
    'assets/images/shalom.jpg',
    'assets/images/Ankara.jpeg',
    'assets/images/Kids.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Added Scaffold for better structure if this is a full page
      body: SingleChildScrollView( // Allow the entire profile to scroll
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
            children: [
              // --- Profile Header Row ---
              Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 50, // Adjusted radius
                        backgroundImage: AssetImage('assets/images/shalom.jpg'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            border: Border.all(color: Theme.of(context).scaffoldBackgroundColor, width: 2),
                          ),
                          child: InkWell(
                            onTap: () { /* Add story logic */ },
                            customBorder: CircleBorder(),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(Icons.add, color: Colors.white, size: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Eustache Kamala', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildStatColumn('100', 'Posts'),
                            _buildStatColumn('1200', 'Followers'),
                            _buildStatColumn('440', 'Following'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Science, Technology, and Engineering',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              // --- Action Buttons ---
              Row(
                children: [
                  Expanded(child: _buildProfileButton('Edit Profile', () {})),
                  SizedBox(width: 8),
                  Expanded(child: _buildProfileButton('Share Profile', () {})),
                  SizedBox(width: 8),
                  Expanded(child: _buildProfileButton('Contact', () {})),
                ],
              ),
              SizedBox(height: 16),
              // --- Tab Icons (Posts, Reels, Tagged) ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(icon: Icon(Icons.grid_on_outlined, size: 30), onPressed: () {}),
                  IconButton(icon: Icon(Icons.movie_creation_outlined, size: 30), onPressed: () {}),
                  IconButton(icon: Icon(Icons.assignment_ind_outlined, size: 30), onPressed: () {}),
                ],
              ),
              Divider(height: 1), // Visual separator

              // --- Posts Grid ---
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: postImagePaths.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      print('Tapped on post: ${postImagePaths[index]}');
                    },
                    child: Image.asset(
                      postImagePaths[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(count, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
      ],
    );
  }

  Widget _buildProfileButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: Colors.grey[300],
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 10)
      ),
      child: Text(text),
    );
  }
}
