import 'dart:convert';
//import 'dart:js_util';

import 'package:flutter/material.dart';

import './info.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  Widget infoTemplate(infoItem, context) {
    return Row(
      children: [
        infoItem.icon,
        const SizedBox(
          width: 5,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 50.0,
          padding: const EdgeInsets.all(5),
          child: RichText(
              text: TextSpan(style: const TextStyle(fontSize: 18), children: [
            TextSpan(
                text: infoItem.normalText,
                style: const TextStyle(color: Colors.white)),
            TextSpan(
                text: infoItem.boldText,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))
          ])),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('assets/bg.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: const CircleAvatar(
                      radius: 74.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('assets/Linkedin.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 190),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 55,
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Zinar Barwari',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Mobile Application Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 100, 100, 100)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Open to ')
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 201, 200, 200)),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add selection',
                          style:
                              TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 201, 200, 200)),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Color.fromARGB(255, 58, 57, 57),
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey[500],
              ),

              Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.red,
                        child: Column(
                          children: [
                            Text('Analytics'),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text("private to you")
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.people),
                                    Column(
                                      children: [
                                        Text('2 profile views'),
                                        Text(
                                            'Discover who is viewed your profile')
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  height: 10,
                                  color: Colors.grey[500],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.search),
                                    Column(
                                      children: [
                                        Text('4 search apperances'),
                                        Text(
                                            'See how often you appear in search results.')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text('Analytics'),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text("private to you")
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.people),
                                    Column(
                                      children: [
                                        Text('2 profile views'),
                                        Text(
                                            'Discover who is viewed your profile')
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  height: 10,
                                  color: Colors.grey[500],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.search),
                                    Column(
                                      children: [
                                        Text('4 search apperances'),
                                        Text(
                                            'See how often you appear in search results.')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.yellow,
                        child: Column(
                          children: [
                            Text('Analytics'),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text("private to you")
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.people),
                                    Column(
                                      children: [
                                        Text('2 profile views'),
                                        Text(
                                            'Discover who is viewed your profile')
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  height: 10,
                                  color: Colors.grey[500],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.search),
                                    Column(
                                      children: [
                                        Text('4 search apperances'),
                                        Text(
                                            'See how often you appear in search results.')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.pink,
                        child: Column(
                          children: [
                            Text('Analytics'),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text("private to you")
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.people),
                                    Column(
                                      children: [
                                        Text('2 profile views'),
                                        Text(
                                            'Discover who is viewed your profile')
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  height: 10,
                                  color: Colors.grey[500],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.search),
                                    Column(
                                      children: [
                                        Text('4 search apperances'),
                                        Text(
                                            'See how often you appear in search results.')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
