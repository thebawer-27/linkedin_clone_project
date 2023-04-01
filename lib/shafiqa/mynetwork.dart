import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:linkedin_clone_project/shafiqa/QR.dart';
import 'package:linkedin_clone_project/shafiqa/firstscreen.dart';

class MyNetwork extends StatelessWidget {
  const MyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const First()));
              },
              child: Row(
                children: [
                  Text("Manage my network"),
                  SizedBox(
                    width: 210,
                  ),
                  Icon(
                    Icons.trending_flat,
                    color: Colors.grey,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(500, 50),
                primary: Colors.white,
                onPrimary: Colors.blue,
                shape: RoundedRectangleBorder(),
              ),
            ),
            SizedBox(height: 3),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const second(),
                    ));
              },
              child: Row(
                children: [
                  Text("Invitation"),
                  SizedBox(
                    width: 280,
                  ),
                  Icon(
                    Icons.trending_flat,
                    color: Colors.grey,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(500, 50),
                primary: Colors.white,
                onPrimary: Colors.blue,
                shape: RoundedRectangleBorder(),
              ),
            ),
            SizedBox(height: 3),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const third()));
              }),
              child: Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Celebration"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "jobs changes,Birthday, Work Anniversaries",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Icon(
                  Icons.trending_flat,
                  color: Colors.grey,
                )
              ]),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(500, 50),
                  primary: Colors.white,
                  onPrimary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
