/// This file contains the entry point for the application. I am using default theme data.
/// There is usually more that happens in the main function before running the app, such as
/// the initialization or set up of any services.

import 'package:flutter/material.dart';
import 'package:ncl_assessment/views/screens/home_page.dart';

void main() {
  runApp(const NclApp());
}

class NclApp extends StatelessWidget {
  const NclApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ncl Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
