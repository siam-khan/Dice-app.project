// ignore: unused_import
import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  return runApp(
   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      
      body: const DicePage(),
      ),
    )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber= 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: 
          FlatButton(
            onPressed: (){
              setState(() {
                leftDiceNumber=Random().nextInt(6)+ 1;
              });
            },
            child: Image.asset("images/dice$leftDiceNumber.png")),
          ),
          Expanded(
            
            child: Image.asset("images/dice1.png"))
        ],
      ),
    );
  }
}