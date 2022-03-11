// ignore: unused_import
import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  return runApp(
   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Dicee"),
        backgroundColor: Colors.blue,
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
          Image.asset("images/dice$leftDiceNumber.png"),
          ),
          Expanded(child: Image.asset("images/dice3.png"))
        ],
      ),
    );
  }
}