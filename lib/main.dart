import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallPage(),
      ),
    );

  }
}



class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballnumber = 1;
  void ballChange (){
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: GestureDetector(
            onTap: (){
              ballChange();
            },
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage('assets/images/ball${ballnumber.toString()}.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

