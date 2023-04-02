import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Qrpage extends StatelessWidget {
  const Qrpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                )),
            title: Text(
              "Lincedin QR code",
              style: TextStyle(color: Colors.black),
            ),
            titleSpacing: 50,
          ),
          body: Column(
            children: [
              TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 3,
                  indicatorColor: Colors.green,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: const EdgeInsets.all(2),
                  tabs: [
                    Tab(
                      text: "My code",
                    ),
                    Tab(
                      text: "Scan",
                    )
                  ]),
              Expanded(
                child: TabBarView(children: [Mycode(), Scan()]),
              )
            ],
          ),
        ));
  }
}

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Linkedin needs to your camera to scan a Linkedin code.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              OutlinedButton(
                  child: Text('Enable camera access'),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 3, color: Colors.white),
                    primary: Colors.white,
                  ),
                  onPressed: (() {
                    Navigator.pop(context);
                  })),
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.filter,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Add code from gallery",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}

class Mycode extends StatelessWidget {
  const Mycode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 223),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.white,
              child: Column(children: [
                Padding(padding: EdgeInsets.only(top: 5)),
                Text(
                  "Bawer Muhyaddin",
                  style: TextStyle(fontStyle: FontStyle.normal, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Student at university do Dohuk",
                  style: TextStyle(fontSize: 8),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage('assets/qr.jpg'),
                  height: 200,
                  width: 200,
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.share), Text("Share my code")],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.download), Text("Save to gallery")],
            )
          ],
        ),
      )),
    );
  }
}
