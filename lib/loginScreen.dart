import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  
@override
_LoginScreenState createState() => _LoginScreenState();
}

Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2)
                )
            ]
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black87
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff7ca4a5)
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black38
                  )
                ),
              ),
          )
    ],
  );
}
class _LoginScreenState extends State<LoginScreen> {
@override
  Widget build(BuildContext context) {
    return Scaffold (
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, 
                    colors: [
                      Color(0x660095a4),
                      Color(0x990095a4),
                      Color(0xcc0095a4),
                      Color(0xff0095a4),
                    ]
                    )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Welcome back !'),
                    Container(padding: EdgeInsets.only(top: 200)),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                        
                      ),
                    ),
                    SizedBox(height: 20,),
                    buildEmail(),
                  ],
                ),
                ),
                )
            ],
          ),
          ),
        ),
    );
  }
}