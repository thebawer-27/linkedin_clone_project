// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:linkedin_clone_project/Bawer/PostW.dart';
import 'package:linkedin_clone_project/Bawer/DataMdel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                // open the side menu
                Scaffold.of(context).openDrawer();
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/add-user.png'),
              ),
            );
          }),
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
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                // borderSide: BorderSide(
                //   color: Color.fromARGB(48, 158, 158, 158),
                // ),
              ),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.chat),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              accountName: Text(
                "Bawer muhyaddin",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "johndoe@example.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/add-user.png'),
              ),
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
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: ListView.builder(
          itemCount: feed.length,
          itemBuilder: (context, index) {
            return PostsWidget(
              av: feed[index].avatar,
              ca: feed[index].caption,
              po: feed[index].post,
              us: feed[index].username,
            );
          },
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<String> data = [
    'Bawer',
    'Zinar',
    '7ama',
  ];

  final List<String> recentData = ['Bawer', 'Zinar'];

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
