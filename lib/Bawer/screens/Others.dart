import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:linkedin_clone_project/Bawer/datamodels/DataMdel.dart';

class Other extends StatelessWidget {
  const Other({super.key});

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
