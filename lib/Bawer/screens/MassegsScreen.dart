// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:linkedin_clone_project/Bawer/datamodels/DataSearchModel.dart';
import 'package:linkedin_clone_project/Bawer/screens/FocusedScreen.dart';
import 'package:linkedin_clone_project/Bawer/screens/Others.dart';

class Masseges extends StatefulWidget {
  const Masseges({super.key});

  @override
  State<Masseges> createState() => _MassegesState();
}

class _MassegesState extends State<Masseges> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: SizedBox(
            height: 38,
            child: TextField(
              onTap: () {
                showSearch(context: context, delegate: DataSearch());
              },
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                filled: true,
                fillColor: Color.fromARGB(48, 158, 158, 158),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Massages',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.green,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(child: Text('Focused')),
              Tab(child: Text('Others')),
            ],
          ),
          actions: [
            Icon(
              Icons.filter_list_rounded,
              color: Colors.black,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        body: TabBarView(children: [Focused(), Other()]),
      ),
    );
  }
}
