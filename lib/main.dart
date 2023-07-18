import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:policeappp/screens/login.dart';


//import 'package:loginscreen/signup.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: homeScreen(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}



class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),
    ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => LoginScaffold())));
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/policeLogo.png",
              height: 180,
              width: 180,
            ),

            Container(
                child: Text("SALEM DISTRICT POLICE",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,

                    ))),

            /*ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginScreen()),
                  );
                },


                child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),

              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
