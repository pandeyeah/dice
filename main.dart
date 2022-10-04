import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DICE",
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  int dice = 6;
  // void roll() {
  //   if(dice==1){
  //     dice=7;
  //   }
  //   dice--;
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//shape: CircleBorder(3),

        title: Text(
          'DICE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,

      ),
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(

            elevation: 13,
              shadowColor: Colors.pink,
              //shape: ShapeBorder.lerp(2, BorderRadius.circular(3), 2.0),
              margin: EdgeInsets.all(10),


              child: TextButton(

              onPressed: (){
                setState(() {
                  //roll();
                  dice=Random().nextInt(6)+1;
                });

                print('pressed');
              },
              child: Image.asset('image/dice$dice.png'))),
        ),
      ),
    );
  }
}

