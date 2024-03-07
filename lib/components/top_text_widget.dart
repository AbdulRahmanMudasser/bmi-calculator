import 'package:flutter/material.dart';

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({super.key});

  final String defaultFontFamily = "Poppins";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // welcome text
         Text(
          "Welcome 😊",
          style: TextStyle(
            fontFamily: defaultFontFamily,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),

        // bim calculator text
        Text(
          "BMI Calculator",
          style: TextStyle(
            fontFamily: defaultFontFamily,
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
