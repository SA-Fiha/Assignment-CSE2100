import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  String dropdownValue = 'Details';
  var items = [
    'Details',
    'At nearly ninety, retired nature writer Hattie Bloom prefers the company of birds to people, but when a fall lands her in a nursing home she struggles to cope with the loss of independence and privacy. From the confines of her room with a view of the carpark, she dreams of escape.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'), // Change the title as needed
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/img.png',
                width: 180.0,
                height: 220.0,
              ),
              Text(
                'The GREAT ESCAPE from',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2.0),
              Text(
                'WOODLANDS NURSING HOME',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4.0),
              Text('Author: Joanna Nell', style: TextStyle(fontSize: 16.0)),
              Text('Rating: 4.0', style: TextStyle(fontSize: 16.0)),
              TextButton(
                onPressed: () {
                  if (dropdownValue ==
                      'Details') {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Full Details'),
                          content: SingleChildScrollView(
                            child: Text(
                              items[1],
                            ),
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text(dropdownValue),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
