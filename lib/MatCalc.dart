import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Random Name"),
        ),
        body: SpecShit(),
      ),
    );
  }
}

class SpecShit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(95, 91, 249, 0), width: 600);
  }
}

void main() => runApp(const MyApp());
