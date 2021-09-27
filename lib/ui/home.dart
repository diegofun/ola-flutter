import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage({Key? key, required this.title}) : super(key: key);
  static const routeName = '/extractArguments';
  final String title;
  @override
  _HomePageState createState() => _HomePageState(title);
}

class _HomePageState extends State<HomePage> {
  _HomePageState(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(15.0),
      child: new SingleChildScrollView(
        child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.

        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.

        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(title)
          ],
        ),
      ),
    );
  }
}