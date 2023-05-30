import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final listHello = List<String>.generate(50, (index) => 'Person $index');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App Bar"),
          ),
         /**  body: ListView.builder(
            itemCount: listHello.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Text(listHello[index]),
                ],
              );
            },
          ),*/
          floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
          onPressed: () => _startAddNewTransaction(context),
          child: Icon(Icons.add),
        ),

          // body: ListView(
          //     // padding: EdgeInsets.all(10),
          //     // physics: NeverScrollableScrollPhysics(),
          //     // reverse: true,
          //     // scrollDirection: Axis.horizontal,
          //     children: [
          //       for(int i=0;i<100;i++)
          //       Text("Hello"),
          //     ],
          // ),

          /** body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          )),
                          padding: EdgeInsets.all(5),
                          child: Text("\$100")),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateFormat('yMMMd').format(DateTime.now()),
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Row 1"),
                      Text("Row 2"),
                      Text("Row 3"),
                      Text("Row 4"),
                      Text("Row 5"),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                        controller: titleController,
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Price'),
                        controller: amountController,
                      ),
                      ElevatedButton(onPressed: onPrint, child: Text("Submit")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
         */

          ),
    ),
    );
  }

  void onPrint() {
    print(titleController.text + " " + amountController.text);
  }
  
  _startAddNewTransaction(BuildContext context) {

      showModalBottomSheet(
      context: context,
      builder: (bCtx) {
        return GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              TextField(decoration: InputDecoration(label: Text("Your Name!")),),
              TextField(decoration: InputDecoration(label: Text("Your Name!")),),
              ElevatedButton(onPressed: null, child: Text("Submit")),
            ]
          ),
          behavior: HitTestBehavior.opaque,
        );
      },
    );

  }
}
