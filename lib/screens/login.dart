import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:policeappp/routes/admin/adminHome.dart';

import 'package:policeappp/global.dart' as global;
import '../routes/field_officer/fieldOfficerHome.dart';

class LoginScaffold extends StatefulWidget {
  const LoginScaffold({Key? key}) : super(key: key);

  @override
  State<LoginScaffold> createState() => _LoginScaffoldState();
}

class _LoginScaffoldState extends State<LoginScaffold> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late String roleName;
  Future<void> login(BuildContext context) async {
    var url = 'http://192.168.1.18:3000/login'; // Replace with your Node.js server's IP address
    var client = http.Client();
    var data;

    try {
      var response = await client.post(
        Uri.parse(url),
        body: json.encode({
          'username': usernameController.text,
          'password': passwordController.text,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      data = json.decode(response.body);
      print(data);
    } catch (e) {
      print('Error: $e');
    } finally {
      client.close();
    }

    if (data['success'] == true) {
      print('Login success');
      String role = data['role'];
      global.roleName=role;
      if (role == 'admin') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => adminHome()),
        );
      } else if (role == 'fieldofficer') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fieldOfficerScaffold()),
        );
      } else if (role == 'dataentry') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => adminHome()),
        );
      }
    } else {

      showDialogBox(context, "View");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(46, 46, 116, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/policeLogo.png",
                    height: 130,
                    width: 130,
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                        Text(
                          "GET STARTED",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[500],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                controller: usernameController,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                    borderSide: BorderSide(
                                      width: 1.5,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                    borderSide: BorderSide(
                                      width: 1.5,
                                    ),
                                  ),
                                  labelText: "UserName",
                                  floatingLabelStyle:
                                  TextStyle(color: Colors.black45),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter a username";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 30),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      controller: passwordController,
                                      keyboardType: TextInputType.text,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12.0),
                                          ),
                                          borderSide: BorderSide(
                                            width: 1.5,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12.0),
                                          ),
                                          borderSide: BorderSide(
                                            width: 1.5,
                                          ),
                                        ),
                                        labelText: "Password",
                                        floatingLabelStyle:
                                        TextStyle(color: Colors.black45),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Enter a password";
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () {
                                  print("Pressed");
                                  login(context);
                                },
                                child: Text("LOGIN"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Color.fromRGBO(46, 46, 116, 1),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void showDialogBox(BuildContext context, String action) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: 300, // Set the desired width
          height: 120, // Set the desired height
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("INVALID LOGIN  CREDENTIALS"),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          ),
        ),
        elevation: 10,
      );
    },
  );
}
