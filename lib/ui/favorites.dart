import 'package:flutter/material.dart';

class Favorites extends StatefulWidget{
  Favorites({Key? key, required this.title}) : super(key: key);
  static const routeName = '/extractArguments';
  final String title;
  @override
  _FavoritesState createState() => _FavoritesState(title);
}

class _FavoritesState extends State<Favorites> {
  _FavoritesState(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}