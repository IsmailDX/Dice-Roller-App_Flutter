import 'package:flutter/material.dart';
import 'dart:math'; //randomizer

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  //when using stateful widget u will always work with 2 classes
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    //returns State
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //when using stateful widget u wil lalways work with 2 classes and _ means class is private
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      //this tells flutter to reexecute the build function and updates
      currentDiceRoll = randomizer.nextInt(6) +
          1; //This will give number from 1 to 6 but if u did not add + 1 then it will be from 0 to 6
    });

    // print("Changing image...."); //we can use print and then open the debug console beside the terminal to check if function is used or not
  }

  @override
  Widget build(context) {
    return Column(
      //Column takes all available vertical space
      mainAxisSize: MainAxisSize
          .min, //we use min to put it in the center vertically (its max by default)
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
            height: 20), //this is like padding, it hads invisible box
        TextButton(
          //Types of butttons: ElevatedButton, OutlinedButton, and TextButton
          onPressed:
              rollDice, //if there is no function yet, then write () {} and write code inside {}
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //     top:
              //         10), //the only adds padding to 1 direction and all adds to all
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
