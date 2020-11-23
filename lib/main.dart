import 'package:card_swipe/card_swipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CardSwipe(
          elements: [
            Container(child: SizedBox.expand(child: Card(child: Center(child: Text('#1'))))),
            Container(child: SizedBox.expand(child: Card(child: Center(child: Text('#2'))))),
            Container(child: SizedBox.expand(child: Card(child: Center(child: Text('#3'))))),
          ],
        ),
      ),
    );
  }
}
