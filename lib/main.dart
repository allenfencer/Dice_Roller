import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dice(),
    ),
  );
}


class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
        title: Text('Dice Roller',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Image(
                  image: AssetImage('images/dice_$dice.png'),
                height: 300,
                width: 300,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  dice=Random().nextInt(6)+1;
                });
              },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueGrey[900],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ROLL',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 35,),),
                  SizedBox(width: 10,),
                  Icon(FontAwesomeIcons.diceD20,size: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
