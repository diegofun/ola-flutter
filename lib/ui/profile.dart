import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  Profile({Key? key, required this.title}) : super(key: key);
  static const routeName = '/extractArguments';
  final String title;
  @override
  _ProfileState createState() => _ProfileState(title);
}

class _ProfileState extends State<Profile> {
  _ProfileState(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(title),
    );
  }
}