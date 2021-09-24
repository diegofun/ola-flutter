import 'package:flutter/material.dart';

class Selling extends StatefulWidget{
  Selling({Key? key, required this.title}) : super(key: key);
  static const routeName = '/extractArguments';
  final String title;
  @override
  _SellingState createState() => _SellingState(title);
}

class _SellingState extends State<Selling> {
  _SellingState(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}