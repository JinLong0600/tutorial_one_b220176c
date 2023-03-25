import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(180,255,255,1),
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Color.fromRGBO(8,72,171,1),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  // Declare init ballNumber
  int ballNumber = 1;

  // Random number function
  void randomize(){
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                // onPress function when image is clicked
                onPressed: (){
                  setState(() {
                    randomize();
                  });

                  // Print ball number in console
                  print('Ball Number: $ballNumber');
                },
                child: Image.asset(
                  'images/ball$ballNumber.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

