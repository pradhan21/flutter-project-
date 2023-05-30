import 'package:flutter/material.dart';
import 'package:route/pageone.dart';
import 'package:route/pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:PageOne.id,
      routes:{
        PageOne.id: (context) => PageOne(title:"FirstPage"),
        Pagetwo.id:(context) => Pagetwo(title:"SecondPage"),
      },
    );
  }
}

