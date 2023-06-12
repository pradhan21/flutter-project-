import 'package:flutter/material.dart';

import 'nameroutes.dart';

class PageOne extends StatefulWidget{
  static const String id ="PageOne";
  PageOne({Key?key, required this.title}):super(key:key);
  final String title;
  @override
  State<PageOne> createState() => _PageOneState();
}
class _PageOneState extends State<PageOne>{
  @override
  Widget build(BuildContext context){
    final arguments = ModalRoute.of(context)?.settings.arguments as Map ;
    print("Pass $arguments");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
           ElevatedButton(onPressed:(){
            Navigator.pushNamed(context, RouteName.second_route, arguments: {
              'name': 'nirdesh'
           });
           }, 
           child: Text("Second Page"))
          ],
      ),
      ),
      
    );
  }
}