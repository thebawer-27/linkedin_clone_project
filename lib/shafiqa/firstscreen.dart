import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
 title: 'demo',theme: ThemeData(
        primaryColor: Colors.white,
      ),
 home: Scaffold(appBar: AppBar( backgroundColor: Colors.white,
  leading: IconButton(onPressed: (() {
    Navigator.pop(context);
  }), icon: Icon(Icons.arrow_back,color: Colors.grey,)),
  title: Text("Manage my network",style: TextStyle(color: Colors.black),),
),
body: Center(
  child:  Column(
    mainAxisAlignment: MainAxisAlignment.center
    ,children: [
    Image(image: AssetImage('assets/1.jpg'),height: 200,width: 800,),
    SizedBox(height: 5,),
    Text("Your communities show up here",style: TextStyle(
      fontStyle: FontStyle.normal,fontSize: 20
    ),),SizedBox(height: 19,),

    Text("Start exploring people and internets to add to your Linkedin community",
   style: TextStyle(fontStyle: FontStyle.normal,fontSize: 10),
),
SizedBox(height: 10,),
OutlinedButton(
  
            child: Text('Discover more'),
  
            style: OutlinedButton.styleFrom(
  
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
  
            ),
  
            
            onPressed: (() {
  
              Navigator.pop(context);
  
            })
  
            ),
  ],)
))
    );
  }
}
class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) 
  {return DefaultTabController(length: 2, child: 
  Scaffold(appBar: AppBar(
    backgroundColor: Colors.white,
  leading: IconButton(onPressed: (() {
    Navigator.pop(context);
  })
  , icon: Icon(Icons.arrow_back,color: Colors.grey,)),
  title: Text("Invitation",style: TextStyle(color: Colors.black),),titleSpacing: 50
  ,
  ),body: Column(children: [
    TabBar(labelColor: Colors.green,unselectedLabelColor: Colors.grey,
indicatorWeight: 3,indicatorColor: Colors.green,  indicatorSize: TabBarIndicatorSize.tab,   
 indicatorPadding: const EdgeInsets.all(2),tabs:[Tab(text: "Received",),Tab(text: "Sent",)] )
  ,
   Expanded(
    child: TabBarView(children:[
     I1(),
     I2()
    ]),
  )],),
  ));

  }
}
class I1 extends StatelessWidget {
  const I1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
 title: 'demo',theme: ThemeData(
        primaryColor: Colors.white,
      ),
 home: Scaffold(appBar: AppBar( backgroundColor: Colors.white,
  leading: ElevatedButton(onPressed: () {
    
  },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22)
              ),
backgroundColor: Colors.green,
 padding: EdgeInsets.all(5),
 textStyle: TextStyle(fontSize:15,
              fontWeight: FontWeight.bold)),child: Text("All (0)"))
),
body: Center(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Image(image: AssetImage('assets/2.jpg'),height: 200,width: 800,),
    Center(
      child: Text("No invitation here",style: TextStyle(
        fontStyle: FontStyle.normal,fontSize: 20
      )),
    )
  ],)
))
    );
  }
}
class I2 extends StatelessWidget {
  const I2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
 title: 'demo',theme: ThemeData(
        primaryColor: Colors.white,
      ),
 home: Scaffold(appBar: AppBar( backgroundColor: Colors.white,actions: [
  Row(
  children: [ElevatedButton(onPressed: () {
    
  },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22)
              ),
backgroundColor: Colors.green,
 padding: EdgeInsets.all(5),
 textStyle: TextStyle(fontSize:15,
              fontWeight: FontWeight.bold)),child: Text("People (0)")),SizedBox(width: 125,),
              ElevatedButton(onPressed: () {
    
  },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22)
              ),
backgroundColor: Colors.green,
 padding: EdgeInsets.all(5),
 textStyle: TextStyle(fontSize:15,
              fontWeight: FontWeight.bold)),child: Text("Page (0)")),
              SizedBox(width: 130,),
              ElevatedButton(onPressed: () {
    
  },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22)
              ),
backgroundColor: Colors.green,
 padding: EdgeInsets.all(5),
 textStyle: TextStyle(fontSize:15,
              fontWeight: FontWeight.bold)),child: Text("Events (0)")),],
  
  )
 ],
  
),
body: Center(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Image(image: AssetImage('assets/4.jpg'),height: 200,width: 800,),
    Center(
      child: Text("No invitation here",style: TextStyle(
        fontStyle: FontStyle.normal,fontSize: 20
      )),
    )
  ],)
))
    );;
  }
}
class third extends StatelessWidget {
  const third({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: MaterialApp(
       debugShowCheckedModeBanner: false,
 title: 'demo',theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(appBar: AppBar( backgroundColor: Colors.white,
  leading: IconButton(onPressed: (() {
    Navigator.pop(context);
  }), icon: Icon(Icons.arrow_back,color: Colors.grey,)),
  title: Text("Celebration",style: TextStyle(color: Colors.black),),
),body: Column(children: [TabBar( labelColor: Colors.green,unselectedLabelColor: Colors.grey,
indicatorWeight: 3,indicatorColor: Colors.green,  indicatorSize: TabBarIndicatorSize.tab,    indicatorPadding: const EdgeInsets.all(2),
tabs:[Tab(text: "Job change",),Tab(text: "Birthday",),Tab(text: "Work anniversaries",)] ) ,
Expanded(
  child:   TabBarView(children: [  
    C1(),
    C2(),
    C3()

  ],),
)
]),

    )));
  }
}

class C1 extends StatelessWidget {
  const C1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
 title: 'demo',theme: ThemeData(
        primaryColor: Colors.white,
      ),
 home: Scaffold(
body: Center(
  child:  Column(
    mainAxisAlignment: MainAxisAlignment.center
    ,children: [
Image(image: AssetImage('assets/3.jpg'),height: 200,width: 800,),
    SizedBox(height: 5,),
    Text("No new job change in your network",style: TextStyle(
      fontStyle: FontStyle.normal,fontSize: 20
    ),),SizedBox(height: 19,),

    Text("View other celebration such as birthdays and work anniversaries.",
   style: TextStyle(fontStyle: FontStyle.normal,fontSize: 10),
),
SizedBox(height: 10,),
OutlinedButton(
  
            child: Text('Go to My Network'),
  
            style: OutlinedButton.styleFrom(
  
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
  
            ),
  
            
            onPressed: (() {
  
              Navigator.pop(context);
  
            })
  
            ),
  ],)
))
    );
  }
}
class C2 extends StatelessWidget {
  const C2({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
 title: 'demo',theme: ThemeData(
        primaryColor: Colors.white,
      ),
 home: Scaffold(
body: Center(
  child:  Column(
    mainAxisAlignment: MainAxisAlignment.center
    ,children: [
Image(image: AssetImage('assets/3.jpg'),height: 200,width: 800,),
    SizedBox(height: 5,),
    Text("No new Birthday change in your network",style: TextStyle(
      fontStyle: FontStyle.normal,fontSize: 20
    ),),SizedBox(height: 19,),

    Text("View other celebration such as job changes and work anniversaries.",
   style: TextStyle(fontStyle: FontStyle.normal,fontSize: 10),
),
SizedBox(height: 10,),
OutlinedButton(
  
            child: Text('Go to My Network'),
  
            style: OutlinedButton.styleFrom(
  
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
  
            ),
  
            
            onPressed: (() {
  
              Navigator.pop(context);
  
            })
  
            ),
  ],)
))
    );
  }
}
class C3 extends StatelessWidget {
  const C3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
 title: 'demo',theme: ThemeData(
        primaryColor: Colors.white,
      ),
 home: Scaffold(
body: Center(
  child:  Column(
    mainAxisAlignment: MainAxisAlignment.center
    ,children: [
Image(image: AssetImage('assets/3.jpg'),height: 200,width: 800,),
    SizedBox(height: 5,),
    Text("No new work anniversaries in your network",style: TextStyle(
      fontStyle: FontStyle.normal,fontSize: 20
    ),),SizedBox(height: 19,),

    Text("View other celebration such as job changes and birthsay.",
   style: TextStyle(fontStyle: FontStyle.normal,fontSize: 10),
),
SizedBox(height: 10,),
OutlinedButton(
  
            child: Text('Go to My Network'),
  
            style: OutlinedButton.styleFrom(
  
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
  
            ),
            onPressed: () {
  
              Navigator.pop(context);
  
            }
            ),
  ],)
))
    );
  }
}