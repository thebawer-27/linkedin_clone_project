import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class PostsWidget extends StatelessWidget {
  final String av, ca, po, us, jo;
  const PostsWidget(
      {super.key,
      required this.av,
      required this.us,
      required this.ca,
      required this.po,
      required this.jo});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Column(
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
                  SizedBox(
                    width: 10,
                  ),
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
                          jo,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  ca,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                  ),
                ),
              ),
              Image.asset(
                po,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Image.asset('assets/Icons/like.png'),
                        onPressed: null,
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
                      IconButton(
                        icon: Image.asset('assets/Icons/chat-bubble.png'),
                        onPressed: null,
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
                      IconButton(
                        icon: Image.asset('assets/Icons/repeat.png'),
                        onPressed: null,
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
                      IconButton(
                        icon: Image.asset('assets/Icons/send.png'),
                        onPressed: null,
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
            ],
          ),
        ),
        Positioned(
          top: 15,
          right: 10,
          child: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
