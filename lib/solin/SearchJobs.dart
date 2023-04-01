import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone_project/solin/jobs.dart';

import '../Bawer/screens/MassegsScreen.dart';

class SearchJobs extends StatelessWidget{

@override
 @override
  Widget build(BuildContext context){
    return MaterialApp( home:
     Scaffold(appBar: AppBar(

        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Builder(builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.grey,), onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const jobs(),) );  },
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
        ),
    
    body:
    Container(width: 1550,height: 50,color:Colors.white,
      child: ListView(scrollDirection: Axis.horizontal,

        children: [
          IconButton(
                onPressed: null,
                icon: Image.asset('assets/Icons/settings-sliders.png'),
              ),
              ElevatedButton(
              child: Text("Jobs"),
     onPressed: () {},
    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
    backgroundColor: Colors.green,
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(fontSize:15,
                fontWeight: FontWeight.bold))
                ,
     ),
      Container(width: 1,height: 30,color: Colors.black45,)
    ,
      
      OutlinedButton.icon(
             icon: Icon(Icons.arrow_drop_down),
     onPressed: () {},
    style: OutlinedButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    backgroundColor: Colors.white,
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(fontSize:15,
                fontWeight: FontWeight.bold),), label: Text('Date posted')
                ,
     ),
      
      OutlinedButton.icon(
             icon: Icon(Icons.arrow_drop_down),
     onPressed: () {},
    style: OutlinedButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    backgroundColor: Colors.white,
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(fontSize:15,
                fontWeight: FontWeight.bold),), label: Text('Experience level')
                ,
     ),
      
      OutlinedButton.icon(
             icon: Icon(Icons.arrow_drop_down),
     onPressed: () {},
    style: OutlinedButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    backgroundColor: Colors.white,
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(fontSize:15,
                fontWeight: FontWeight.bold),), label: Text('Company')
                ,
     ),
    
      OutlinedButton.icon(
             icon: Icon(Icons.arrow_drop_down),
     onPressed: () {},
    style: OutlinedButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    backgroundColor: Colors.white,
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(fontSize:15,
                fontWeight: FontWeight.bold),), label: Text('Job type')
                ,
     ),
     
      OutlinedButton.icon(
             icon: Icon(Icons.arrow_drop_down),
     onPressed: () {},
    style: OutlinedButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    backgroundColor: Colors.white,
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(fontSize:15,
                fontWeight: FontWeight.bold),), label: Text('On-site/remote')
                ,
     ),
    
    
    
      OutlinedButton.icon(
             icon: Icon(Icons.arrow_drop_down),
     onPressed: () {},
    style: OutlinedButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    backgroundColor: Colors.white,
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(fontSize:15,
                fontWeight: FontWeight.bold),), label: Text('Easy Apply')
                ,
     ),
    
    
    
    
     TextButton(
            
     onPressed: () {},
    style:TextButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(
      fontSize:15,
                fontWeight: FontWeight.bold)), child: Text('All filters')
                ,
     ),
     Container(width: 1,height: 30,color: Colors.black45,),
    
    
     TextButton(
            
     onPressed: () {},
    style:TextButton.styleFrom(primary: Colors.black45,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
               
     
    
     padding: EdgeInsets.all(5),
     textStyle: TextStyle(
      fontSize:15,
                fontWeight: FontWeight.bold)), child: Text('Reset')
                ,
     ),
    
        ],),
    ),
    ),)
 

    
    
    ;
  }

}





