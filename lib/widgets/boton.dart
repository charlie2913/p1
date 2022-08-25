import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Boton extends StatelessWidget {
  final String num;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
  const Boton({
    required this.num,
    required this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          child: Text(num),
          style: TextButton.styleFrom(
            primary: Color(textColor),
            backgroundColor: Color(fillColor),
            onSurface: Colors.grey,
          ),
          onPressed: () {
            callback(num);
          },

        ),
      ),
    );
  }
}
