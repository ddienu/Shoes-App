import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoesApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shoe Sales'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text('Hola Mundo'),
          ),
        ),
      ),
    );
  }
}