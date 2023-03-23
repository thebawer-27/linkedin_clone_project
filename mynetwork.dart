import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/my_flutter_app_icons.dart';

class MyNetwork extends StatelessWidget {
  const MyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
ElevatedButton(onPressed: () {}, child: Row(
children: [Text("Manage my network"),SizedBox(width: 210,),Icon(Icons.trending_flat,
color: Colors.grey,)],) ,style: ElevatedButton.styleFrom(minimumSize: Size(500, 50),
primary: Colors.white,onPrimary: Colors.blue,
  shape: RoundedRectangleBorder(),
),),SizedBox(height: 3),
ElevatedButton(onPressed: () {}, child:  Row(children: [Text("Invitation"),SizedBox(width: 280,),
Icon(Icons.trending_flat,color: Colors.grey,)],) ,style: ElevatedButton.styleFrom(minimumSize: Size(500, 50),
primary: Colors.white,onPrimary: Colors.blue,
  shape: RoundedRectangleBorder(),
),),SizedBox(height: 3),ElevatedButton(onPressed: (() {}), child: Row(children: [Column(mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,children:[
  Text("Celebration"),SizedBox(width: 5,),Text("jobs changes,Birthday, Work Anniversaries",style: TextStyle(fontSize: 10,color: Colors.grey),)],
  
  ),SizedBox(width: 150,),
Icon(Icons.trending_flat,color: Colors.grey,)] ),style: ElevatedButton.styleFrom(minimumSize: Size(500, 50),
primary: Colors.white,onPrimary: Colors.blue),)
     ],),
    );
      
  }
}