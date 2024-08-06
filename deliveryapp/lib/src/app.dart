//import helper library
import 'package:flutter/material.dart';

//create class that will be our custom widget
//This class must extend 'StatelessWidget' base class
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
//Must define a 'build' methos that return
//the widgets that *this* widget will show
  int counter = 0;
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
            print('hi there');
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Hi am here!'),
        ),
        body: Text('$counter'),
      ),
    );
  }
}
