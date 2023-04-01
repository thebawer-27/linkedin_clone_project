

import 'dart:html';
import 'dart:math';

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
    return Scaffold(backgroundColor: Color.fromARGB(255, 212, 205, 205),
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
                backgroundImage: AssetImage('assets/add-user.png'),
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
      body: Center(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 

 Container(
  child: FittedBox(
    child: Row(children: [
     
            TextButton.icon(
   onPressed: () {
   Navigator.push(context,MaterialPageRoute(builder: ((context) => MyJobs())));
   },
   
   style:TextButton.styleFrom(primary: Colors.black45,
  padding: EdgeInsets.all(30),backgroundColor: Colors.white,fixedSize: Size(765, 80),
  textStyle: TextStyle(fontSize: 20,
  fontWeight: FontWeight.bold),
  
  ),
   icon: Icon(Icons.bookmark_border),
   label: Text("My jobs"),
   
   ), 
   
   
  
  
  
   TextButton.icon(
   onPressed: () {
   
   },
   style:TextButton.styleFrom(primary: Colors.black45,
  padding: EdgeInsets.all(30),backgroundColor: Colors.white,fixedSize: Size(765, 80),
  textStyle: TextStyle(fontSize: 20,
  fontWeight: FontWeight.bold,),
  
  ),
   icon: Icon(Icons.edit_square),
   label: Text("Post a job"),
   
   )
                
   ],
   ),
  ),
 ),

 SizedBox(height: 10,),

 
Center(
  child:   FittedBox(
    child: Container(color: Colors.white,width: 2040,height: 100,
    
      child:
    
          Column(
    
            crossAxisAlignment: CrossAxisAlignment.start,
    
            children: [ 
    
    
    
     Row(
    
       children: [
    
         Center(
    
           child: Container( 
    
        
    
                child:   FittedBox(
                  child: CircleAvatar(
                    
                  
                    
                                    backgroundImage: AssetImage('assets/add-user.png'),
                    
                              radius: 40,
                    
                                  ),
                ),
    
                                ),
    
         ),
    
     Column(
    
       children: [
    
         Container( child:Text("Try Premium to see jobs where you would be a top application",style: TextStyle(
    
              
    
              fontStyle: FontStyle.normal,fontSize: 30
    
            ),)
    
            ),SizedBox(height: 5,),
    
     ElevatedButton(
    
         
    
                  child: Text('Try free for 1 month'),
    
          
    
                  style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 30,color: Colors.black),
    
           padding: const EdgeInsets.all(12.0),
                    primary: Color.fromARGB(255, 164, 126, 12),
    
                    shape: RoundedRectangleBorder(
                      
    
                      borderRadius: BorderRadius.circular(20)
    
                    )
    
          
    
                  ),
    
          
    
                  
    
                  onPressed: () {
    
          
    
          
    
                  }
    
          
    
                  ),
    
    
    
       ],
    
     ),
    
        SizedBox(width: 1055,),
    
        Icon(Icons.keyboard_control,size: 30,)
    
      
    
        ],
    
     ),
    
       ],
    
       
    
     ),
    
    
    
          ),
  ),
),SizedBox(height: 10,),


      Center(
        child: FittedBox(
          child: Container(width: 2040,height: 400,color: Colors.white,
           child:  Column(  crossAxisAlignment: CrossAxisAlignment.start,
          
           
            children: [
          FittedBox(
            child: Column(
              children: [
                Text('Recommended for you',style: TextStyle(
                fontStyle: FontStyle.normal,fontSize: 30,color: Colors.black,
                  ),),
              ],
            ),
          ),
        Center(child: Image(image: AssetImage('assets/3.jpg'),height: 220,width: 850,)),
            SizedBox(height: 5,),
            Center(
              child: Text("Whant more jobs?",style: TextStyle(
                      fontStyle: FontStyle.normal,fontSize: 25
              ),),
            ),SizedBox(height: 19,),
        
            Center(
              child: Text("Search ror jobs and we'll serve recommendations that match your criteria",
                       style: TextStyle(fontStyle: FontStyle.normal,fontSize: 20),
                    ),
            ),
        SizedBox(height: 10,),
        Center(
          child: OutlinedButton(
            
                  child: Text('Search jobs'),
            
                  style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 30),
           
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
            
                  ),
            
                  
                  onPressed: () {
            
                     Navigator.push(context,MaterialPageRoute(builder: (context) => SearchJobs(),) );
            
                  }
            
                  ),
        ),
          ],)
          ),
        ),
      )
      ],

      ),
        )
      )
      ;
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
