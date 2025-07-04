import 'package:flutter/material.dart';
import 'package:instagram/views/widget/post_item.dart';
import 'package:instagram/views/widget/story_item.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  bool _isLiked = false;
  bool _isCommented = false;
  bool _isShared = false;
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    StoryItem(
                        imagePath: 'assets/images/Ankara.jpeg',
                        username: 'Kids Outfit',
                        isCurrentUserStory: true
                    ),
                    StoryItem(
                        imagePath: 'assets/images/bg.jpg',
                        username: 'Apple',
                        isCurrentUserStory: false
                    ),
                    StoryItem(
                        imagePath: 'assets/images/Kids.jpeg',
                        username: 'Annah',
                        isCurrentUserStory: false
                    ),
                    StoryItem(
                        imagePath: 'assets/images/Lasaky.jpeg',
                        username: 'Jennifer',
                        isCurrentUserStory: false
                    ),
                    StoryItem(
                        imagePath: 'assets/images/ace.jpg',
                        username: 'Ace',
                        isCurrentUserStory: false
                    ),
                    StoryItem(
                        imagePath: 'assets/images/cord.jpg',
                        username: 'Mark',
                        isCurrentUserStory: false
                    ),
                    StoryItem(
                        imagePath: 'assets/images/michael.jpg',
                        username: 'Michael',
                        isCurrentUserStory: false
                    ),
                    StoryItem(
                        imagePath: 'assets/images/shalom.jpg',
                        username: 'Shalom',
                        isCurrentUserStory: false
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  PostItem(
                      imagePath: 'assets/images/Ankara.jpeg',
                      userProfileImageUrl: 'assets/images/Ankara.jpeg',
                      username: 'Kids Fashion',
                      caption: 'Adorable new arrivals!',
                      commentsCount: '1234',
                      likesCount: '390',
                      sharesCount: '30',
                      isLiked: false,
                      isBookmarked: false,
                      onLikePressed: () {
                        setState(() {
                          _isLiked = !_isLiked;
                        });
                      },
                      onCommentPressed: () {
                        setState(() {
                          _isCommented = !_isCommented;
                        });
                      },
                      onBookmarkPressed: (){
                        setState(() {
                          _isBookmarked = !_isBookmarked;
                        });
                      },
                      onSendPressed: () {
                        setState(() {
                          _isShared = !_isShared;
                        });
                      },
                  ),
                  PostItem(
                    imagePath: 'assets/images/Kids.jpeg',
                    userProfileImageUrl: 'assets/images/Kids.jpeg',
                    username: 'Trendy Kids',
                    caption: 'Cool outfits for cool kids.',
                    commentsCount: '1234',
                    likesCount: '390',
                    sharesCount: '30',
                    isLiked: false,
                    isBookmarked: false,
                    onLikePressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                      });
                    },
                    onCommentPressed: () {
                      setState(() {
                        _isCommented = !_isCommented;
                      });
                    },
                    onBookmarkPressed: (){
                      setState(() {
                        _isBookmarked = !_isBookmarked;
                      });
                    },
                    onSendPressed: () {
                      setState(() {
                        _isShared = !_isShared;
                      });
                    },
                  ),
                  PostItem(
                    imagePath: 'assets/images/Lasaky.jpeg',
                    userProfileImageUrl: 'assets/images/Lasaky.jpeg',
                    username: 'Chic Women',
                    caption: 'Latest in women\'s fashion.',
                    commentsCount: '1234',
                    likesCount: '390',
                    sharesCount: '30',
                    isLiked: false,
                    isBookmarked: false,
                    onLikePressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                      });
                    },
                    onCommentPressed: () {
                      setState(() {
                        _isCommented = !_isCommented;
                      });
                    },
                    onBookmarkPressed: (){
                      setState(() {
                        _isBookmarked = !_isBookmarked;
                      });
                    },
                    onSendPressed: () {
                      setState(() {
                        _isShared = !_isShared;
                      });
                    },
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}