import 'package:flutter/material.dart';

import 'home.dart';
class secondPage extends StatefulWidget {
  const secondPage({Key? key, required this.title}):super(key: key);

  final String title;

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
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
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                        builder: (context) => MyHomePage(title:'Second Page'),
                ),
              );
            },
             child: Text('Previous Page')),
          ],
        ),
        ),
      );
       // This trailing comma makes auto-formatting nicer for build methods.
  }
}

