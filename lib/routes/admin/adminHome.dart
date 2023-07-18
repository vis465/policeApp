import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:policeappp/routes/admin/profile.dart';
import 'package:policeappp/routes/admin/totalCount.dart';
import 'package:policeappp/screens/forms/new_forms.dart';
import 'package:policeappp/screens/login.dart';

import '../../screens/forms/edit_forms.dart';
import '../../screens/forms/view_forms.dart';

class adminHome extends StatefulWidget {
  const adminHome({Key? key}) : super(key: key);

  @override
  State<adminHome> createState() => _adminHomeState();
}

class _adminHomeState extends State<adminHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: adminHomeScreen(),
      ),
    );
  }
}

class adminHomeScreen extends StatefulWidget {
  const adminHomeScreen({Key? key}) : super(key: key);

  @override
  State<adminHomeScreen> createState() => _adminHomeScreenState();
}

class _adminHomeScreenState extends State<adminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        "images/policeLogo.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Expanded(child: SizedBox.shrink()),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.logout,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "WELCOME!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[500],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return PopupMenuDialog(context: context);
                          },
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.format_list_bulleted,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Forms",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(46, 46, 116, 1),
                          padding: EdgeInsets.only(
                              top: 15, left: 22, right: 22, bottom: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ), //form

                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profileScaffold()));
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.portrait_rounded,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(46, 46, 116, 1),
                          padding: EdgeInsets.only(
                              top: 15, left: 22, right: 22, bottom: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ), //profile
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => totalCountScaffold()));
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.av_timer_rounded,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "total count",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(46, 46, 116, 1),
                          padding: EdgeInsets.only(
                              top: 15, left: 10, right: 10, bottom: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ), //count
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PopupMenuDialog extends StatelessWidget {
  final BuildContext context;

  const PopupMenuDialog({required this.context});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 350, // Set the desired width
          height: 250, // Set the desired height
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                child: DialogButton(
                  label: 'New Forms',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => newFormsScaffold()),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: DialogButton(
                  label: 'View',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>viewformsScaffold()),);
                  },
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: DialogButton(
                  label: 'Edit',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => editFormsScaffold()),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: DialogButton(
                  label: 'Back',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDialogBox(BuildContext context, String action) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: 300, // Set the desired width
            height: 150, // Set the desired height
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('You pressed: $action'),
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
}

class DialogButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const DialogButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(46, 46, 116, 1),
          fixedSize: Size(100, 50), // Set a fixed width and height for buttons
          //  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
