import 'dart:convert';
import 'dart:ui';
//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:linkedin_clone_project/Bawer/Mainn.dart';
import 'package:linkedin_clone_project/Bawer/datamodels/DataSearchModel.dart';
import 'package:linkedin_clone_project/Bawer/screens/HomeScreen.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashbord()),
            );
          },
        ),
        title: SizedBox(
          height: 38,
          child: TextField(
            onTap: () {},
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(48, 158, 158, 158),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search...',
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
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
                            image: AssetImage('assets/st.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: const CircleAvatar(
                      radius: 74.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('assets/st.jpg'),
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

              Container(
                padding: EdgeInsets.fromLTRB(15, 8, 0, 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bawer Muhyaddin',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'Mobile Application Developer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 100, 100, 100)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Open to
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
                  //Add Selection
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
                color: Colors.white,
              ),

              Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    //Analatics
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Divider(
                          thickness: 0,
                          height: 10,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Analytics',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18)),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye,
                                    size: 16,
                                  ),
                                  Text("private to you")
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                height: 10,
                                color: Colors.white,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.people),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' profile views',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15)),
                                          Text(
                                              ' Discover who is viewed your profile')
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' search apperances',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15)),
                                          Text(
                                              ' See how often you appear in search results.')
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
                    Divider(
                      thickness: 0,
                      height: 10,
                      color: Colors.grey,
                    ),
                    //About
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('About',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18)),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                height: 10,
                                color: Colors.white,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 350,
                                            child: Text("Graduate of computer science with experience working across the" +
                                                " full-stack of software development. I have built a few projects by myself and" +
                                                " I am looking for a role where I can grow and learn from other experienced" +
                                                " team members."),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0,
                      height: 10,
                      color: Colors.grey,
                    ),
                    //Experience
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Experience',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18)),
                                  Row(
                                    children: [
                                      Icon(Icons.add),
                                      Icon(Icons.edit)
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                height: 10,
                                color: Colors.white,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: const CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 20.0,
                                            backgroundImage:
                                                AssetImage('assets/12.png'),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' Software Programmer',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15)),
                                          Text(
                                              ' Korek Telecom . Apprenticeship'),
                                          Text(' Erbil/Iraq')
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
                                      Container(
                                        child: const CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 20.0,
                                            backgroundImage:
                                                AssetImage('assets/13.png'),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' Frontend Developer',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15)),
                                          Text(' Rewanga . web designer'),
                                          Text(' Duhok/Iraq')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0,
                      height: 10,
                      color: Colors.grey,
                    ),
                    //Education
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Education',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18)),
                                  Row(
                                    children: [
                                      Icon(Icons.add),
                                      Icon(Icons.edit)
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                height: 10,
                                color: Colors.white,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: const CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 20.0,
                                            backgroundImage: AssetImage(
                                                'assets/uodlogo.png'),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' University of Duhok',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15)),
                                          Text(
                                              " bachelor's degree in computer science"),
                                          Text(" 2023-2024")
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0,
                      height: 10,
                      color: Colors.grey,
                    ),
                    //Skills
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Skills',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18)),
                                  Row(
                                    children: [
                                      Icon(Icons.add),
                                      Icon(Icons.edit)
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                height: 10,
                                color: Colors.white,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' Team Leadership',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13)),
                                          Divider(
                                            thickness: 1,
                                            height: 10,
                                            color: Colors.grey[500],
                                          ),
                                          Text(' IT Service Management',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13)),
                                          Divider(
                                            thickness: 1,
                                            height: 10,
                                            color: Colors.grey[500],
                                          ),
                                          Text(' Implimentation Support',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13)),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0,
                      height: 10,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
