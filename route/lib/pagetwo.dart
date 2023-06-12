import 'package:flutter/material.dart';

import 'nameroutes.dart';

class Pagetwo extends StatefulWidget{
  dynamic data;
   Pagetwo(this.data);
  static const String id ="Pagetwo";
  @override
  State<Pagetwo> createState() => _PagetwoState();
}
class _PagetwoState extends State<Pagetwo>{
  @override
  Widget build(BuildContext context){
    print(widget.data['name']);
    return Scaffold(
      
      appBar: AppBar(
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
           ElevatedButton(onPressed:(){
            Navigator.pushNamed(context, RouteName.home_route);
           }, 
           child: Text("First Page"))
          ],
      ),
      ),
      
    );
  }
}