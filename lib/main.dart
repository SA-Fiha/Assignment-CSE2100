import 'package:flutter/material.dart';
import 'package:assignment_01/BookListPage.dart';
void main (){
  runApp(new MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BookListPage()
    );
  }
}


