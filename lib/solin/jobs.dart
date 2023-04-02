import 'package:flutter/material.dart';

import '../Bawer/datamodels/DataSearchModel.dart';
import '../Bawer/screens/MassegsScreen.dart';
import 'MyJobs.dart';
import 'SearchJobs.dart';

class jobs extends StatefulWidget {
  const jobs({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 205, 205),
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
            height: 30,
            child: TextField(
              onTap: () {
                showSearch(context: context, delegate: DataSearch());
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(48, 158, 158, 158),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search jobs',
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
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MyJobs())));
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black45,
                        padding: EdgeInsets.all(30),
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      icon: Icon(Icons.bookmark_border),
                      label: Text("My jobs"),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.black45,
                        padding: EdgeInsets.all(30),
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(Icons.edit_calendar),
                      label: Text("Post a job"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/st.jpg'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Try Premium to see jobs where you would be a top application",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            child: Text('Try free for 1 month '),
                            style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                    fontSize: 10, color: Colors.black),
                                padding: const EdgeInsets.all(12.0),
                                primary: Color.fromARGB(255, 164, 126, 12),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {}),
                      ],
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Recommended for you',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                            child: Image(
                          image: AssetImage('assets/3.jpg'),
                          height: 220,
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            "Whant more jobs?",
                            style: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Center(
                          child: Text(
                            "Search for jobs and we'll serve recommendations that match your criteria...",
                            style: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: OutlinedButton(
                              child: Text('Search Jobs'),
                              style: OutlinedButton.styleFrom(
                                  textStyle: TextStyle(fontSize: 30),
                                  primary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SearchJobs(),
                                    ));
                              }),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<String> data = [
    'solin',
    'shafiqa',
    'yusra',
  ];

  final List<String> recentData = ['solin', 'shafiqa'];

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
