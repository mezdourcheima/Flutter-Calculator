import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;


  const CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
                color: Color(textColor),
              ),
            ),
          ),
          onPressed: () => callBack(text) ,
          backgroundColor: Color(fillColor),
        ),
      ),
    );
  }
}
