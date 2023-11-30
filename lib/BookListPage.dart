import 'package:flutter/material.dart';
import 'package:assignment_01/ThirdPage.dart';
import 'package:assignment_01/SecondPage.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  State<BookListPage> createState() => BookListPageState();
}

class BookListPageState extends State<BookListPage> {
  void navigateToSecondPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }

  void navigateToThirdPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThirdPage()),
    );
  }

  Widget _cardWidget1() {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {
          print("tapped");
          navigateToSecondPage(); // Call the method to navigate to SecondPage
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/img.png',
                width: 80.0,
                height: 120.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The GREAT ESCAPE from',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      'WOODLANDS NURSING HOME',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text('Author: Joanna Nell', style: TextStyle(fontSize: 16.0)),
                    Text('Rating: 4.0', style: TextStyle(fontSize: 16.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardWidget2() {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {
          print("tapped");
          navigateToThirdPage(); // Call the method to navigate to ThirdPage
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/img_1.png',
                width: 80.0,
                height: 120.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Normal People',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text('Author: Sally Rooney', style: TextStyle(fontSize: 16.0)),
                    Text('Rating: 4.5', style: TextStyle(fontSize: 16.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _cardWidget1(),
          _cardWidget2(),
        ],
      ),
    );
  }


}
