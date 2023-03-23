import 'package:flutter/material.dart';
import 'package:linkedin_clone_project/Bawer/datamodels/DataMdel.dart';

class Focused extends StatefulWidget {
  const Focused({super.key});

  @override
  State<Focused> createState() => _FocusedState();
}

class _FocusedState extends State<Focused> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: massege.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(massege[index].avatar),
          ),
          title: Text(massege[index].username),
          subtitle: Text(massege[index].mass),
          trailing: Text(massege[index].time),
        );
      },
    );
  }
}
