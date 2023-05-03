import 'package:flutter/material.dart';

void main() {
  Paint.enableDithering = true; //makes the gradient smoother
  runApp(
    MaterialApp(
      //Root
      home: Scaffold(
        //Below Root, in scaffold u can change background colors to 1 color
        body: Container(
          decoration: const BoxDecoration(
            //here u can use gradient colors
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45, 7, 98),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
