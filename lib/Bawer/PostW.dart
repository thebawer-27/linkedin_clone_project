import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class PostsWidget extends StatelessWidget {
  final String av, ca, po, us;
  const PostsWidget(
      {super.key,
      required this.av,
      required this.us,
      required this.ca,
      required this.po});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    av,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        us,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Job title at company',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        ca,
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 16),
                      Image.asset(
                        po,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.grey[600],
                    ),
                    Text(
                      'Like',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.grey[600],
                    ),
                    Text(
                      'Comments',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Icon(
                      Icons.repeat,
                      color: Colors.grey[600],
                    ),
                    Text(
                      'Reapost',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Icon(
                      Icons.send,
                      color: Colors.grey[600],
                    ),
                    Text(
                      'Send',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 6,
              color: Color.fromRGBO(233, 230, 221, 0.0),
            ),
          ],
        ),
      ],
    );
  }
}
