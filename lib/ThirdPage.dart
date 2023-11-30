import 'package:flutter/material.dart';
import 'package:assignment_01/BookListPage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}): super(key: key);

  @override
  State<ThirdPage> createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  String dropdownValue = 'Details';
  var items = ['Details',
    'Normal People by Sally Rooney is a coming-of-age novel that follows the turbulent relationship between Connell and Marianne. Set in Ireland, it explores themes of class, intimacy, and mental health.'];
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
                'assets/images/img_1.png',
                width: 180.0,
                height: 220.0,
              ),
              Text('Normal People', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 4.0),
              Text('Author: Sally rooney', style: TextStyle(fontSize: 16.0)),
              Text('Rating: 4.5', style: TextStyle(fontSize: 16.0)),
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

