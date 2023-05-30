import 'package:flutter/material.dart';
import 'package:route/pageone.dart';

class Pagetwo extends StatefulWidget{
  Pagetwo({Key?key, required this.title}):super(key:key);
  final String title;
  static const String id ="Pagetwo";
  @override
  State<Pagetwo> createState() => _PagetwoState();
}
class _PagetwoState extends State<Pagetwo>{
  @override
  Widget build(BuildContext context){
    final arguments = ModalRoute.of(context)?.settings.arguments as Map ;
    print("Pass Value $arguments");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
           ElevatedButton(onPressed:(){
            Navigator.pushNamed(context, PageOne.id, arguments: {
              'name': 'Pradhan'
            });
           }, 
           child: Text("First Page"))
          ],
      ),
      ),
      
    );
  }
}