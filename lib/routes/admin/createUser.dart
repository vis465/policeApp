import 'package:flutter/material.dart';

class CreateUserScaffold extends StatefulWidget {
  const CreateUserScaffold({Key? key}) : super(key: key);

  @override
  State<CreateUserScaffold> createState() => _CreateUserScaffoldState();
}

class _CreateUserScaffoldState extends State<CreateUserScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateUserScreen(),
    );
  }
}

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _policeStationLimit = '';
  String _accessRole = '';
  String _password = '';
  String _policeId = '';

  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue1 = 'Admin';
  var items1 = [
    'Admin',
    'Dataentry',
    'FieldOfficier',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
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
                            Navigator.pop(context);
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
                  SizedBox(height: 50),
                  Text(
                    "ADD USER",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
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
                              labelText: "Name",
                              floatingLabelStyle:
                              TextStyle(color: Colors.black45),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter a name";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _name = value!;
                            },
                          ),
                          SizedBox(height: 30),
                          DropdownButtonFormField<String>(
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                            decoration: InputDecoration(
                              
                              focusColor:Colors.black45 ,
                              labelText: 'Station Limit ',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black45, // Change border color when focused
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),

                          )
                          ,
                          SizedBox(height: 30),
        DropdownButtonFormField<String>(
          value: dropdownvalue1,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: items1.map((String items1) {
            return DropdownMenuItem<String>(
              value: items1,
              child: Text(items1),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
          decoration: InputDecoration(
            focusColor: Colors.black45, // Set the focused color to black45
            labelText: 'Access Role',
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black45, // Change border color when focused
              ),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),

                          SizedBox(height: 30),
                          TextFormField(
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
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter a password";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _password = value!;
                            },
                          ),
                          SizedBox(height: 30),
                          TextFormField(
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
                              labelText: "Police ID",
                              floatingLabelStyle:
                              TextStyle(color: Colors.black45),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the police ID";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _policeId = value!;
                            },
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  // Perform form submission logic here
                                  // Access the form values via _name, _policeStationLimit, _accessRole, _password, _policeId
                                }
                              },
                              child: Text('Create'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(46, 46, 116, 1),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
