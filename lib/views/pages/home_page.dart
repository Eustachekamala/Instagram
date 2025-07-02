import 'package:flutter/material.dart';
import 'package:instagram/data/constants.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/images/Ankara.jpeg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                        'Your Story',
                         style: TextStyle(
                           fontSize: 14,
                           color: Colors.white30,
                         ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/images/Kids.jpeg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Angellah',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/images/Lasaky.jpeg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Sarah',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Card(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Kids outfit',
                                style: KTStyle.titleStyle
                            ),
                            SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/images/Ankara.jpeg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group for like, comment, send
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.favorite, color: Colors.red, size: 24),
                                    SizedBox(width: 4),
                                    Text('1223', style: TextStyle(fontSize: 12)),
                                    SizedBox(width: 16),
                                    Icon(Icons.comment_outlined, size: 24),
                                    SizedBox(width: 4),
                                    Text('20', style: TextStyle(fontSize: 12)),
                                    SizedBox(width: 16),
                                    Icon(Icons.send_outlined, size: 24),
                                    SizedBox(width: 4),
                                    Text('120', style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                Icon(Icons.bookmark_border_outlined, size: 24,),
                              ],
                            )
                          ]
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Kids outfit',
                                style: KTStyle.titleStyle
                            ),
                            SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/images/Kids.jpeg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group for like, comment, send
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.favorite, color: Colors.red, size: 24),
                                    SizedBox(width: 4),
                                    Text('427', style: TextStyle(fontSize: 12)),
                                    SizedBox(width: 16),
                                    Icon(Icons.comment_outlined, size: 24),
                                    SizedBox(width: 4),
                                    Text('30', style: TextStyle(fontSize: 12)),
                                    SizedBox(width: 16),
                                    Icon(Icons.send_outlined, size: 24),
                                    SizedBox(width: 4),
                                    Text('126', style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                Icon(Icons.bookmark_border_outlined, size: 24,),
                              ],
                            )
                          ]
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Women outfit',
                                style: KTStyle.titleStyle
                            ),
                            SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/images/Lasaky.jpeg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group for like, comment, send
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.favorite, color: Colors.red, size: 24),
                                    SizedBox(width: 4),
                                    Text('123', style: TextStyle(fontSize: 12)),
                                    SizedBox(width: 16),
                                    Icon(Icons.comment_outlined, size: 24),
                                    SizedBox(width: 4),
                                    Text('230', style: TextStyle(fontSize: 12)),
                                    SizedBox(width: 16),
                                    Icon(Icons.send_outlined, size: 24),
                                    SizedBox(width: 4),
                                    Text('12', style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                Icon(Icons.bookmark_border_outlined, size: 24,),
                              ],
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}