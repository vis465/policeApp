import 'package:flutter/material.dart';

class editFormsScaffold extends StatefulWidget {
  const editFormsScaffold({Key? key});

  @override
  State<editFormsScaffold> createState() => _editFormsScaffoldState();
}

class _editFormsScaffoldState extends State<editFormsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editFormScreen(),
    );
  }
}

class editFormScreen extends StatefulWidget {
  const editFormScreen({Key? key});

  @override
  State<editFormScreen> createState() => _editFormScreenState();
}

class _editFormScreenState extends State<editFormScreen> {
  bool _isExpandedBasicDetails = false;
  bool _isExpandedPhysicalFeatures = false;
  bool _isExpandedIdentityDetails = false;
  bool _isExpandedAssets = false;
  bool _isExpandedOrganisationDetails = false;
  bool _isExpandedOthers = false;

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
            SizedBox(height: 15,),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ Text(
                'Edit Entry',
                style: TextStyle(
                  color: Color(0xFF486EE5),
                  fontSize: 28,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),],
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
                    // Add your basic details form fields here
                    // For example:
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Age'),
                    ),
                    // Add more form fields as needed
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
                  _isExpandedOrganisationDetails = !_isExpandedOrganisationDetails;
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
                      decoration: InputDecoration(labelText: 'Organization Name'),
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
