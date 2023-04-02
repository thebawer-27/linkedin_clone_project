// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:linkedin_clone_project/Bawer/datamodels/DataMdel.dart';
import 'package:linkedin_clone_project/Bawer/PostW.dart';
import 'package:linkedin_clone_project/Bawer/screens/MassegsScreen.dart';
import 'package:linkedin_clone_project/Zinar/Profile.dart';
import 'package:linkedin_clone_project/Zinar/mainz.dart';
import 'package:linkedin_clone_project/solin/jobs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Builder(builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/st.jpg'),
              ),
            );
          }),
        ),
        title: SizedBox(
          height: 38,
          child: TextField(
            onTap: () {
              showSearch(context: context, delegate: DataSearch());
            },
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
        actions: [
          IconButton(
            icon: Icon(Icons.chat),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Masseges()),
              );
            },
          ),
        ],
      ),
      drawer: Container(
        child: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                accountName: Text(
                  "Bawer muhyaddin",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "bawermuhyaddin@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Builder(builder: (BuildContext context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileMain()),
                      );
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/st.jpg'),
                    ),
                  );
                }),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Groups",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Events",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 13),
        child: ListView.builder(
          itemCount: feed.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: PostsWidget(
                av: feed[index].avatar,
                ca: feed[index].caption,
                po: feed[index].post,
                us: feed[index].username,
                jo: feed[index].jobs,
              ),
            );
          },
        ),
      ),
      backgroundColor: Color.fromARGB(255, 233, 230, 223),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<String> data = [
    'Bawer',
    'Zinar',
    '7ama',
  ];

  final List<String> recentData = ['Bawer', '7ama'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, 'not found');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> searchResults = data
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(searchResults[index]),
          onTap: () {
            close(context, searchResults[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestionList = query.isEmpty
        ? recentData
        : data
            .where((element) =>
                element.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
