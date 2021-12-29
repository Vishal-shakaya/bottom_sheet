// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.teal[900], 
        
      ),
      home: Scaffold(
    backgroundColor: Colors.grey.shade200,
    appBar: AppBar(
      title: Text('Simple Example'),
    ),
    body: SlidingSheet(
      elevation: 8,
      cornerRadius: 16,
      headerBuilder: (context, sheet) {
        return Container(
            color: Colors.blue,
            height: 30,
            child: Center(
                child: SingleChildScrollView(
                    child: Container(
                        width: 30, height: 6, color: Colors.white))));
      },
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.2, 0.5, 0.7],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      body: Center(
        child: Text('This widget is below the SlidingSheet'),
      ),
      builder: (context, state) {
        return Container(
          height: 500,
          child: Center(
            child: Text('This is the content of the sheet'),
          ),
        );
      },
    ),
  )
    );
  }
}