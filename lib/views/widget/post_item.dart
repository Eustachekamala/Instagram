import 'package:flutter/material.dart';
import 'package:instagram/data/constants.dart';

class PostItem extends StatelessWidget{
  final String imagePath;
  final String username;
  final String caption;
  final String likesCount;
  final String commentsCount;
  final String sharesCount;
  final bool isLiked;
  final bool isBookmarked;
  final VoidCallback? onLikePressed;
  final VoidCallback? onCommentPressed;
  final VoidCallback? onSendPressed;
  final VoidCallback? onBookmarkPressed;
  final String? userProfileImageUrl;

  const PostItem({
    super.key,
    required this.imagePath,
    required this.username,
    required this.caption,
    required this.commentsCount,
    required this.likesCount,
    required this.sharesCount,
    required this.isLiked,
    required this.isBookmarked,
    this.onLikePressed,
    this.onCommentPressed,
    this.onSendPressed,
    this.onBookmarkPressed,
    this.userProfileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    // Determine text color based on theme brightness
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor = isDarkMode ? Colors.white : Colors.black;
    final Color subtitleColor = isDarkMode ? Colors.white70 : Colors.black87;
    final Color iconColor = isDarkMode ? Colors.white70 : Colors.black54;

    // Adjust KTStyle dynamically or ensure it's theme-aware
    final titleStyle = KTStyle.titleStyle.copyWith(color: textColor);
    final countTextStyle = KTStyle.countTextStyle.copyWith(color: subtitleColor);

    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (userProfileImageUrl != null)
                  CircleAvatar(
                    backgroundImage: AssetImage(userProfileImageUrl!),
                    radius: 20.0,
                  )
                else
                  Icon(Icons.account_circle, size: 36.0),
                SizedBox(width: 8.0),
                Text(
                  username,
                  style: titleStyle
                ),
              ],
            ),
            SizedBox(height: 12.0),
            if(caption.isEmpty)...[
              Text(
                caption,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              )
            ],
            GestureDetector(
              onTap: onLikePressed,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
            ),
            SizedBox(height: 12.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _ActionIcon(
                      icon: isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : iconColor,
                      count: likesCount,
                      onTap: onLikePressed,
                      textStyle: countTextStyle
                    ),
                    SizedBox(width: 20.0),
                    _ActionIcon(
                      icon: Icons.chat_bubble_outline,
                      count: commentsCount,
                      color: iconColor,
                      onTap: onCommentPressed,
                      textStyle: TextStyle(
                        fontSize: 14.0,
                      )
                    ),
                    SizedBox(width: 20.0),
                    _ActionIcon(
                      icon: Icons.send_outlined,
                      count: sharesCount,
                      color: iconColor,
                      onTap: onSendPressed,
                      textStyle: TextStyle(
                        fontSize: 14.0,
                      )
                    ),
                  ]
                ),
                IconButton(
                    onPressed: onBookmarkPressed,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    iconSize: 28.0,
                    icon: Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                      size: 28.0,
                    )
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}

class _ActionIcon extends StatefulWidget{
  final IconData icon;
  final Color? color;
  final String count;
  final VoidCallback? onTap;
  final TextStyle textStyle;

  const _ActionIcon({
    required this.icon,
    this.color,
    required this.count,
    this.onTap,
    required this.textStyle
  });

  @override
  State<_ActionIcon> createState() => _ActionIconState();
}

class _ActionIconState extends State<_ActionIcon> {
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: widget.onTap,
     child: Row(
       children: [
         Icon(widget.icon, color: widget.color, size: 28,),
         SizedBox(width: 6,),
         if (widget.count.isNotEmpty) Text(widget.count, style: widget.textStyle),
       ],
     )
   );
  }
}