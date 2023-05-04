import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  Paint.enableDithering = true; //makes the gradient smoother
  runApp(
    const MaterialApp(
      //Root
      home: Scaffold(
        //Below Root, in scaffold u can change background colors to 1 color
        //FIRST METHOD
        // body: GradientContainer(colors: [Color.fromARGB(255, 51, 19, 107), Color.fromARGB(255, 72, 9, 92)]),
        //SECOND METHOD
        body: GradientContainer(
            Color.fromARGB(255, 82, 0, 85), Color.fromARGB(255, 72, 0, 196)),
      ),
    ),
  );
}
