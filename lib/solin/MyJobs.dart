import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone_project/solin/jobs.dart';

class MyJobs extends StatelessWidget{

@override
 @override
  Widget build(BuildContext context){
    return MaterialApp( home:
     Scaffold(appBar: AppBar( backgroundColor: Colors.white,
  leading: IconButton(onPressed: (() {
    Navigator.pop(context);
  }), icon: Icon(Icons.arrow_back,color: Colors.grey,)),
  title: Text("My jobs",style: TextStyle(color: Colors.black),),
    ),
    body:Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            ElevatedButton(
            child: Text("Saved"),
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
 SizedBox(height: 50,),
 
Center(child: Image(image: AssetImage('assets/jobs1.jpg'),height: 200,width: 800,)),
    SizedBox(height: 5,),
    Container(child: Center(
      child: Column(children: [
        
    
        
      Text("Start saving jobs you are interested in",style: TextStyle(
        
        fontStyle: FontStyle.normal,fontSize: 20
      ),),
      SizedBox(height: 19,),
    
      Text("Once jobs are saved you'll find theme here.",
       style: TextStyle(fontStyle: FontStyle.normal,fontSize: 10),
    ),
    SizedBox(height: 10,),
    OutlinedButton(
      
              child: Text('Browse jobs for me'),
      
              style: OutlinedButton.styleFrom(
      
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
      
              ),
      
              
              onPressed: () {
      
                 Navigator.push(context,MaterialPageRoute(builder: (context) => const jobs(),) );
      
              }
      
              ),
      ],),
    ),)
 

    ],
    )
    )
    );
  }

}





