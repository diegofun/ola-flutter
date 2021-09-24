import 'package:flutter/material.dart';

class OpenNow extends StatefulWidget{
  OpenNow({Key? key, required this.title}) : super(key: key);
  static const routeName = '/extractArguments';
  final String title;
  @override
  _OpenNowState createState() => _OpenNowState(title);
}

class _OpenNowState extends State<OpenNow> {
  _OpenNowState(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.title),
    );
  }
}