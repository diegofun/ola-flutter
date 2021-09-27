import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';

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