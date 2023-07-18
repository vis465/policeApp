import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:policeappp/routes/admin/adminHome.dart';
import 'package:policeappp/routes/admin/createUser.dart';
import 'package:policeappp/screens/login.dart';
import 'package:policeappp/global.dart' as global;
class profileScaffold extends StatefulWidget {
  const profileScaffold({Key? key}) : super(key: key);

  @override
  State<profileScaffold> createState() => _profileScaffoldState();
}

class _profileScaffoldState extends State<profileScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: profileScreen(),
      ),
    );
  }
}

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  bool showPassword = true;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> register(BuildContext cont) async {
    var url = 'http://localhost/Policeapp_DataBase/register.php';
    final Uri url1 = Uri.parse(url);
    var client = http.Client();
    var data;
    try {
      var response = await client.post(url1, body: {
        "username": username.text,
        "password": password.text,
      }).timeout(Duration(seconds: 10)); // Increase the timeout duration here
      data = json.decode(response.body);
    } catch (e) {
      print(url);
      print(url1);
      print('Error: $e');
    } finally {
      client.close();
    }

    if (data['success'] == true) {
      print("Registration success");
    } else {
      print("Registration failed");
    }
  }

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
                ElevatedButton(
                  onPressed: () {

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CreateUserScaffold()));
                  },
                  child: Text("Create Profile"),

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    Color.fromRGBO(46, 46, 116, 1),
                    padding: EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                  ),
                ),
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
