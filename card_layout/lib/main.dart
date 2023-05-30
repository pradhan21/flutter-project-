import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title:'hello',
    theme: ThemeData(primarySwatch: Colors.blue ),
    home:CardLayout(),
    );
  }
}

class CardLayout extends StatefulWidget{
  CardLayout({Key? key}):super(key: key);

  @override 
  _CardLayoutState createState() => _CardLayoutState();
}

class _CardLayoutState extends State<CardLayout>{
  Widget build(BuildContext context ){
    return Scaffold(
      // backgroundColor: Colors.white,
    body:Container(
      height: 200,
      width: 200,
      padding: EdgeInsets.all(5),
      child: Center(
        // color: Colors.black,
        child:Column(
          children:[
          Card(      
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text('\$\100')   
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hello'),
                  Text('World'),
                ],
              )
              ,
              
            ],

        ),
         
      ),
       Card(
        // color: Colors.black,
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text('\$\100')   
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hello'),
                  Text('World'),
                ],
              )
              ,
              
            ],

        ),
         
      ),
          ],
        )


    )
    ));
  }
}
