import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

// Alignment? startAlignment; // the ? is to tell flutter that the value will be of type alignment or null
const startAlignment = Alignment
    .topLeft; //better to use final or const then var because value will not change
const endAlignment = Alignment.bottomRight;

//FIRST METHOD

// class GradientContainer extends StatelessWidget {
//   //Constructor (Add const in constructors)
//   const GradientContainer(
//       {super.key,
//       required this.colors}); //if you want to use named argument like colors, then add required, else no need

//   final List<Color> colors; //cannot use final in Lists

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         //here u can use gradient colors
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   }
// }

//SECOND METHOD

class GradientContainer extends StatelessWidget {
  //Constructor (Add const in constructors)
  const GradientContainer(this.color1, this.color2,
      {super.key}); //Here you only accept two colors

  final Color color1; //cannot use final in Lists
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        //here u can use gradient colors
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello World!'),
      ),
    );
  }
}
