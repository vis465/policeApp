import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:policeappp/routes/admin/adminHome.dart';
import 'package:policeappp/routes/admin/createUser.dart';
import 'package:policeappp/screens/login.dart';

import 'package:policeappp/global.dart' as global;

class fieldofficerprofileScaffold extends StatefulWidget {
  const fieldofficerprofileScaffold({Key? key}) : super(key: key);

  @override
  State<fieldofficerprofileScaffold> createState() => _fieldofficerprofileScaffold();
}

class _fieldofficerprofileScaffold extends State<fieldofficerprofileScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: fieldofficerprofileScreen(),
      ),
    );
  }
}

class fieldofficerprofileScreen extends StatefulWidget {
  const fieldofficerprofileScreen({Key? key}) : super(key: key);

  @override
  State<fieldofficerprofileScreen> createState() => _fieldofficerprofileScreenState();
}

class _fieldofficerprofileScreenState extends State<fieldofficerprofileScreen> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => adminHome()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 87,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Image.asset(
                  "images/policeLogo.png",
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  color: Colors.grey[200],
                  child: Text(global.roleName),
                ),
                Container(
                  child: Text("Mobile Station"),
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  color: Colors.grey[200],
                ),
                Container(
                  child: Text("Designation"),
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  color: Colors.grey[200],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),

          Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: <Widget>[

                SizedBox(height: 20),
                IconButton(
                  icon: Icon(
                    Icons.logout,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScaffold()));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Salem District Police",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[500],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
