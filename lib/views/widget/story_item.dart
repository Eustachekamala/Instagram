import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget{
  final String imagePath;
  final String username;
  final bool isCurrentUserStory;

  const StoryItem({
        super.key,
        required this.imagePath,
        required this.username,
        required this.isCurrentUserStory,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isCurrentUserStory ? Colors.blue : Colors.grey,
                width: 4.0,
              ),
            ),
            child: SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          SizedBox(height: 6,),
          Text(
            username,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}