import 'package:flutter/material.dart';

class newFormsScaffold extends StatefulWidget {
  const newFormsScaffold({Key? key});

  @override
  State<newFormsScaffold> createState() => _newFormsScaffoldState();
}

class _newFormsScaffoldState extends State<newFormsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: newFormScreen(),
    );
  }
}

class newFormScreen extends StatefulWidget {
  const newFormScreen({Key? key});

  @override
  State<newFormScreen> createState() => _newFormScreenState();
}

class _newFormScreenState extends State<newFormScreen> {
  bool _isExpandedBasicDetails = false;
  bool _isExpandedPhysicalFeatures = false;
  bool _isExpandedIdentityDetails = false;
  bool _isExpandedAssets = false;
  bool _isExpandedOrganisationDetails = false;
  bool _isExpandedOthers = false;

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _middleNameController = TextEditingController();
  SizedBox formsspace= new SizedBox(height: 15,);
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _middleNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New Entry',
                  style: TextStyle(
                    color: Color(0xFF486EE5),
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 17),
            _buildCategory(
              'Basic Details',
              Icons.keyboard_arrow_right,
              _isExpandedBasicDetails,
              () {
                setState(() {
                  _isExpandedBasicDetails = !_isExpandedBasicDetails;
                });
              },
            ),
            if (_isExpandedBasicDetails)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    Container(

                      width: 414,
                      height: 57,
                      decoration: BoxDecoration(color: Color(0x4C2E2E74)),
                      child: Center(
                        child: Text("1.Basic details",style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                    ),
                    formsspace,

                    TextFormField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name/முதல் பெயர்',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),SizedBox(height: 15),
                    TextFormField(
                      controller: _middleNameController,
                      decoration: InputDecoration(
                        labelText: 'Middle Name/நடுப்பெயர்',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),

                    formsspace,
                    TextFormField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last Name/கடைசி பெயர்',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    formsspace,
                    TextFormField(

                      decoration: InputDecoration(
                        labelText: 'Father name/தந்தை பெயர்',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    formsspace,
                    TextFormField(

                      decoration: InputDecoration(
                        labelText: 'Father name/தந்தை பெயர்',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            _buildCategory(
              'Physical Features',
              Icons.keyboard_arrow_right,
              _isExpandedPhysicalFeatures,
              () {
                setState(() {
                  _isExpandedPhysicalFeatures = !_isExpandedPhysicalFeatures;
                });
              },
            ),
            if (_isExpandedPhysicalFeatures)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    // Add your physical features form fields here
                    // For example:
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Height'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Weight'),
                    ),
                    // Add more form fields as needed
                  ],
                ),
              ),
            _buildCategory(
              'Identity Details',
              Icons.keyboard_arrow_right,
              _isExpandedIdentityDetails,
              () {
                setState(() {
                  _isExpandedIdentityDetails = !_isExpandedIdentityDetails;
                });
              },
            ),
            if (_isExpandedIdentityDetails)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    // Add your identity details form fields here
                    // For example:
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ID Number'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Passport Number'),
                    ),
                    // Add more form fields as needed
                  ],
                ),
              ),
            _buildCategory(
              'Assets',
              Icons.keyboard_arrow_right,
              _isExpandedAssets,
              () {
                setState(() {
                  _isExpandedAssets = !_isExpandedAssets;
                });
              },
            ),
            if (_isExpandedAssets)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    // Add your assets form fields here
                    // For example:
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Asset 1'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Asset 2'),
                    ),
                    // Add more form fields as needed
                  ],
                ),
              ),
            _buildCategory(
              'Organisation Details',
              Icons.keyboard_arrow_right,
              _isExpandedOrganisationDetails,
              () {
                setState(() {
                  _isExpandedOrganisationDetails =
                      !_isExpandedOrganisationDetails;
                });
              },
            ),
            if (_isExpandedOrganisationDetails)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    // Add your organization details form fields here
                    // For example:
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Organization Name'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Position'),
                    ),
                    // Add more form fields as needed
                  ],
                ),
              ),
            _buildCategory(
              'Others',
              Icons.keyboard_arrow_right,
              _isExpandedOthers,
              () {
                setState(() {
                  _isExpandedOthers = !_isExpandedOthers;
                });
              },
            ),
            if (_isExpandedOthers)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    // Add your "Others" form fields here
                    // For example:
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Field 1'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Field 2'),
                    ),
                    // Add more form fields as needed
                  ],
                ),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform submit action here
                String firstName = _firstNameController.text;
                String lastName = _lastNameController.text;
                String middleName = _middleNameController.text;

                print('First Name: $firstName');
                print('Last Name: $lastName');
                print('Middle Name: $middleName');
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(46, 46, 116, 1),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(
    String categoryName,
    IconData icon,
    bool isExpanded,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 1),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      categoryName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Icon(
                    icon,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: new EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
            height: 2.0,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: newFormsScaffold(),
  ));
}
