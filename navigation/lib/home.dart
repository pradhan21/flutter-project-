import 'package:flutter/material.dart';
import 'package:navigation/second_page.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}):super(key: key);

  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 


@override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                        builder: (context) => secondPage(title:'Second Page'),
                ),
              );
            },
             child: Text('Next Page')),
          ],
        ),
        ),
      );
       // This trailing comma makes auto-formatting nicer for build methods.
  }
}

