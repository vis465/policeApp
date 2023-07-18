import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:policeappp/routes/admin/adminHome.dart';

class totalCountScaffold extends StatefulWidget {
  const totalCountScaffold({Key? key}) : super(key: key);

  @override
  State<totalCountScaffold> createState() => _totalCountScaffoldState();
}

class _totalCountScaffoldState extends State<totalCountScaffold> {
  String searchQuery = '';
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Container(
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
                SizedBox(height: 50),
                Text(
                  "TOTAL COUNT",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  searchQuery = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Search by Date',
                                hintText: 'Enter a date',
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            performSearch(searchQuery, selectedDate);
                          },
                          child: Text('Search'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CalendarCarousel(
                      selectedDateTime: DateTime.now(),
                      onDayPressed: (DateTime date, List<dynamic> events) {
                        setState(() {
                          selectedDate = date;
                        });
                      },
                      weekendTextStyle: TextStyle(color: Colors.red),
                      thisMonthDayBorderColor: Colors.grey,
                      weekFormat: false,
                      height: 300.0,
                      daysHaveCircularBorder: false,
                      customGridViewPhysics: NeverScrollableScrollPhysics(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void performSearch(String query, DateTime? selectedDate) {
    // Placeholder function to simulate searching based on the date
    // Replace this with your actual search implementation

    // Perform search operation here
    // For example, you can filter a list of values based on the entered date
    List<String> searchResults = [];

    // Simulate search results
    if (query.isNotEmpty) {
      // Filter your data based on the entered query and selected date
      // Assign the filtered results to the searchResults list
    }

    // Show search results in a dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Search Results'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (searchResults.isEmpty)
                Text('No results found.')
              else
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: searchResults.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(searchResults[index]),
                    );
                  },
                ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
