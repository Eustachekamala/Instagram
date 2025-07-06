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
  int _postLikedCount = 0;
  int _postCommentedCount = 0;
  int _postSharedCount = 0;
  int _postBookmarkedCount = 0;
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
                      commentsCount: _postCommentedCount.toString(),
                      likesCount: _postLikedCount.toString(),
                      sharesCount: _postSharedCount.toString(),
                      isLiked: _isLiked,
                      isBookmarked: _isBookmarked,
                      onLikePressed: () {
                        setState(() {
                          _isLiked = !_isLiked;
                          if(_isLiked){
                            _postLikedCount++;
                          }else{
                            _postLikedCount--;
                          }
                        });
                      },
                      onCommentPressed: () {
                        setState(() {
                          _isCommented = !_isCommented;
                          if(_isCommented){
                            _postCommentedCount++;
                          }else{
                            _postCommentedCount--;
                          }
                        });
                      },
                      onBookmarkPressed: (){
                        setState(() {
                          _isBookmarked = !_isBookmarked;
                          if(_isBookmarked){
                            _postBookmarkedCount++;
                          }else{
                            _postBookmarkedCount--;
                          }
                        });
                      },
                      onSendPressed: () {
                        setState(() {
                          _isShared = !_isShared;
                          if(_isShared){
                            _postSharedCount++;
                          }else{
                            _postSharedCount--;
                          }
                        });
                      },
                  ),
                  ...List.generate(
                      3,
                      (index) {
                        return
                          PostItem(
                            imagePath: 'assets/images/Kids.jpeg',
                            userProfileImageUrl: 'assets/images/Kids.jpeg',
                            username: 'Trendy Kids',
                            caption: 'Cool outfits for cool kids.',
                            commentsCount: _postCommentedCount.toString(),
                            likesCount: _postLikedCount.toString(),
                            sharesCount: _postSharedCount.toString(),
                            isLiked: _isLiked,
                            isBookmarked: _isBookmarked,
                            onLikePressed: () {
                              setState(() {
                                _isLiked = !_isLiked;
                                if(_isLiked){
                                  _postLikedCount++;
                                }else{
                                  _postLikedCount--;
                                }
                              });
                            },
                            onCommentPressed: () {
                              setState(() {
                                _isCommented = !_isCommented;
                                if(_isCommented){
                                  _postCommentedCount++;
                                }else{
                                  _postCommentedCount--;
                                }
                              });
                            },
                            onBookmarkPressed: (){
                              setState(() {
                                _isBookmarked = !_isBookmarked;
                                if(_isBookmarked){
                                  _postBookmarkedCount++;
                                }else{
                                  _postBookmarkedCount--;
                                }
                              });
                            },
                            onSendPressed: () {
                              setState(() {
                                _isShared = !_isShared;
                                if(_isShared){
                                  _postSharedCount++;
                                }else{
                                  _postSharedCount--;
                                }
                              });
                            },
                          );
                      },
                  ),
                  PostItem(
                    imagePath: 'assets/images/Kids.jpeg',
                    userProfileImageUrl: 'assets/images/Kids.jpeg',
                    username: 'Trendy Kids',
                    caption: 'Cool outfits for cool kids.',
                    commentsCount: _postCommentedCount.toString(),
                    likesCount: _postLikedCount.toString(),
                    sharesCount: _postSharedCount.toString(),
                    isLiked: _isLiked,
                    isBookmarked: _isBookmarked,
                    onLikePressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                        if(_isLiked){
                          _postLikedCount++;
                        }else{
                          _postLikedCount--;
                        }
                      });
                    },
                    onCommentPressed: () {
                      setState(() {
                        _isCommented = !_isCommented;
                        if(_isCommented){
                          _postCommentedCount++;
                        }else{
                          _postCommentedCount--;
                        }
                      });
                    },
                    onBookmarkPressed: (){
                      setState(() {
                        _isBookmarked = !_isBookmarked;
                        if(_isBookmarked){
                          _postBookmarkedCount++;
                        }else{
                          _postBookmarkedCount--;
                        }
                      });
                    },
                    onSendPressed: () {
                      setState(() {
                        _isShared = !_isShared;
                        if(_isShared){
                          _postSharedCount++;
                        }else{
                          _postSharedCount--;
                        }
                      });
                    },
                  ),
                  PostItem(
                    imagePath: 'assets/images/Lasaky.jpeg',
                    userProfileImageUrl: 'assets/images/Lasaky.jpeg',
                    username: 'Chic Women',
                    caption: 'Latest in women\'s fashion.',
                    commentsCount: _postCommentedCount.toString(),
                    likesCount: _postLikedCount.toString(),
                    sharesCount: _postSharedCount.toString(),
                    isLiked: _isLiked,
                    isBookmarked: _isBookmarked,
                    onLikePressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                        if(_isLiked){
                          _postLikedCount++;
                        }else{
                          _postLikedCount--;
                        }
                      });
                    },
                    onCommentPressed: () {
                      setState(() {
                        _isCommented = !_isCommented;
                        if(_isCommented){
                          _postCommentedCount++;
                        }else{
                          _postCommentedCount--;
                        }
                      });
                    },
                    onBookmarkPressed: (){
                      setState(() {
                        _isBookmarked = !_isBookmarked;
                        if(_isBookmarked){
                          _postBookmarkedCount++;
                        }else{
                          _postBookmarkedCount--;
                        }
                      });
                    },
                    onSendPressed: () {
                      setState(() {
                        _isShared = !_isShared;
                        if(_isShared){
                          _postSharedCount++;
                        }else{
                          _postSharedCount--;
                        }
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