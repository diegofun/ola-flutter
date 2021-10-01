import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class Register extends StatefulWidget{
  Register({Key? key, required this.title}) : super(key: key);
  static const routeName = '/extractArguments';
  final String title;

  @override
  _RegisterState createState() => _RegisterState(title);
}

class _RegisterState extends State<Register> {
  _RegisterState(this.title);
  final String title;
  final ImagePicker _picker = ImagePicker();

  Future<Image> bgImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return Image.file(File(image!.path));
  }


  @override
  initState() {
    super.initState();
        () async {
          var _permissionStatus = await Permission.storage.status;

          if (_permissionStatus != PermissionStatus.granted) {
            PermissionStatus permissionStatus= await Permission.storage.request();
            setState(() {
            _permissionStatus = permissionStatus;
            });
          }
        } ();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            margin: new EdgeInsets.all(15.0),
            child: new SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(title),
                  //Image.asset('assets/images/lion.png', width: 50, height: 50),
                  TextFormField(
                    cursorColor: Colors.red,
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 5.0),),
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Email"
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    cursorColor: Colors.red,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: new InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 5.0),),
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Contraseña"),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}