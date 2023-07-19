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
                    Container(
                      width: 414,
                      height: 1761,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 414,
                              height: 35,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(width: 414, height: 35),
                                  ),

                                  Positioned(
                                    left: 333,
                                    top: 13,
                                    child: Container(
                                      width: 14.74,
                                      height: 12,
                                      child: Stack(children: [

                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            top: 162,
                            child: Container(
                              width: 24,
                              height: 24,
                              child: Stack(children: [

                                  ]),
                            ),
                          ),
                          Positioned(
                            left: 90,
                            top: 153,
                            child: Text(
                              'New Entry',
                              style: TextStyle(
                                color: Color(0xFF486EE5),
                                fontSize: 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),


                          Positioned(
                            left: 120,
                            top: 1686,
                            child: Container(
                              width: 172,
                              height: 55,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 172,
                                      height: 55,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF486EE5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 15,
                                            offset: Offset(0, 4),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 62.46,
                                    top: 14.76,
                                    child: SizedBox(
                                      width: 55.73,
                                      height: 27.41,
                                      child: Text(
                                        'save',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 207,
                            child: Container(
                              width: 414,
                              height: 1459,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 5,
                                    child: Container(
                                      width: 414,
                                      height: 57,
                                      decoration: BoxDecoration(color: Color(0x4C2E2E74)),
                                    ),
                                  ),

                                  Positioned(
                                    left: 20,
                                    top: 590,
                                    child: Container(
                                      width: 375,
                                      height: 82,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 32,
                                            child: Container(
                                              width: 374,
                                              height: 50,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFFB0B0B0)),
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                              'Profile forwarded by/பதிவு தயார் நபர்',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    left: 20,
                                    top: 467,
                                    child: Container(
                                      width: 374,
                                      height: 106,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 374,
                                            height: 106,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 56,
                                                  child: Container(
                                                    width: 374,
                                                    height: 50,
                                                    decoration: ShapeDecoration(
                                                      color: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        side: BorderSide(width: 0.50, color: Color(0xFFB0B0B0)),
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Present monitering officer/\nதற்போதைய கண்காணிப்பு அதிகாரி',
                                                    style: TextStyle(
                                                      color: Color(0xFF777777),
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 17,
                                                  top: 69,
                                                  child: Text.rich(
                                                    TextSpan(children: [

                                                        ]),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    left: 21,
                                    top: 86,
                                    child: Container(
                                      width: 373,
                                      height: 357,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                              width: 373,
                                              child: Text(
                                                'Involved case details/சம்பந்தப்பட்ட வழக்கு விவரங்கள்\n',
                                                style: TextStyle(
                                                  color: Color(0xFF777777),
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),

                                          Positioned(
                                            left: 0,
                                            top: 129,
                                            child: Container(
                                              width: 373,
                                              height: 46,
                                              decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                                            ),
                                          ),
                                          Positioned(
                                            left: 92,
                                            top: 56,
                                            child: Text(
                                              'New Entry/புதிய பதிவு',
                                              style: TextStyle(
                                                color: Color(0xFF777777),
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 254,
                                            child: Container(
                                              width: 373,
                                              height: 46,
                                              decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 311,
                                            child: Container(
                                              width: 371,
                                              height: 46,
                                              child: Stack(
                                                children: [
                                                  formsspace,

                                                  TextFormField(

                                                    decoration: InputDecoration(
                                                      labelText: 'Present Stage',
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                    ),
                                                  ),SizedBox(height: 15),

                                                  formsspace,
                                                  Positioned(
                                                    left: 124,
                                                    top: 11,
                                                    child: SizedBox(
                                                      width: 122,

                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 197,
                                            child: Container(
                                              width: 373,
                                              height: 46,
                                              child: Stack(
                                                children: [
                                                  formsspace,

                                                  TextFormField(

                                                    decoration: InputDecoration(
                                                      labelText: 'CR no.',
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                    ),
                                                  ),SizedBox(height: 15),
                                                  formsspace,
                                                  Positioned(
                                                    left: 97,
                                                    top: 11,
                                                    child: SizedBox(
                                                      width: 175,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 169,
                                            top: 265,
                                            child: Text(
                                              'Gist',
                                              style: TextStyle(
                                                color: Color(0xFF777777),
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 131,
                                            top: 140,
                                            child: Text(
                                              'Police station',
                                              style: TextStyle(
                                                color: Color(0xFF777777),
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 328,
                                            top: 47,
                                            child: Text(
                                              '+',
                                              style: TextStyle(
                                                color: Color(0xFF777777),
                                                fontSize: 28,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    top: 696,
                                    child: Container(
                                      width: 374,
                                      height: 106,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 374,
                                            child: Stack(
                                              children: [

                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text(
                                                    'Reason for creation/\nஉருவாக்கத்திற்கான காரணம்',
                                                    style: TextStyle(
                                                      color: Color(0xFF777777),
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),

                                                ),
                                                formsspace,

                                                TextFormField(

                                                  decoration: InputDecoration(

                                                    border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(15),
                                                    ),
                                                  ),
                                                ),SizedBox(height: 15),

                                                formsspace,
                                              ],

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),

                                  Positioned(
                                    left: 20,
                                    top: 826,
                                    child: Container(
                                      width: 375,
                                      height: 82,
                                      child: Stack(
                                        children: [
                                          formsspace,

                                          TextFormField(

                                            decoration: InputDecoration(
                                              labelText: 'Profile Forwarded by',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),SizedBox(height: 15),

                                          formsspace,

                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                              'Remarks/குறிப்புரை',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    top: 932,
                                    child: Container(
                                      width: 374,
                                      height: 106,
                                      padding: const EdgeInsets.only(right: 2, bottom: 34),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Last visit of other state/\nவெளி மாநிலத்திற்கான கடைசி பயணத்தின்\n விவரங்கள்',
                                            style: TextStyle(
                                              color: Color(0xFF777777),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    top: 1080,
                                    child: Container(
                                      width: 374,
                                      height: 106,
                                      padding: const EdgeInsets.only(right: 5, bottom: 34),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Last visit of other country/\nவெளி நாட்டிற்கு சென்ற கடைசி பயணத்தின்\n விவரங்கள்',
                                            style: TextStyle(
                                              color: Color(0xFF777777),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 21,
                                    top: 1013,
                                    child: Container(
                                      width: 374,
                                      height: 50,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          formsspace,

                                          TextFormField(

                                            decoration: InputDecoration(
                                              labelText: 'Present monitering officer',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),SizedBox(height: 15),

                                          formsspace,
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 21,
                                    top: 1161,
                                    child: Container(
                                      width: 374,
                                      height: 50,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 374,
                                            height: 50,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Color(0xFFB0B0B0)),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    left: 21,
                                    top: 1228,
                                    child: Container(
                                      width: 375,
                                      height: 82,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                              'Last interrogation details/கடைசி விசாரணை \nவிவரங்கள்',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 1377,
                                    child: Container(
                                      width: 375,
                                      height: 82,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 32,
                                            child: Container(
                                              width: 374,
                                              height: 50,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFFB0B0B0)),
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                              'Present Photos/தற்போதைய புகைப்படங்கள்',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 35,
                                    top: 1422,
                                    child: Text(
                                      'Click on the camera to caputre',
                                      style: TextStyle(
                                        color: Color(0xFF777777),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 363,
                                    top: 1422,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: [

                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
