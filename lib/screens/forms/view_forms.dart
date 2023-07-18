import 'package:flutter/material.dart';

class viewformsScaffold extends StatefulWidget {
  const viewformsScaffold({super.key});

  @override
  State<viewformsScaffold> createState() => _viewformsScaffoldState();
}

class _viewformsScaffoldState extends State<viewformsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: viewformsScreen()),
    );
  }
}

class viewformsScreen extends StatefulWidget {
  const viewformsScreen({super.key});

  @override
  State<viewformsScreen> createState() => _viewformsScreenState();
}

class _viewformsScreenState extends State<viewformsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
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
            'View Forms',
            style: TextStyle(
              color: Color(0xFF486EE5),
              fontSize: 28,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),],
        ),
        SizedBox(height: 17),
        Column(
          children: <Widget>[
            Container(
              width: 374,
              height: 39,
              decoration: ShapeDecoration(
                color: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                  ),
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform search functionality here
                    },
                  ),
                ],
              ),
            ),
          ],
        )

      ],

    ));
  }
}
