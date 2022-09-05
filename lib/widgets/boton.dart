import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:p1/calcular.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Boton extends StatelessWidget {
  final String num;
  final int fillColor;
  final int textColor;
  final double textSize;
  const Boton({
    required this.num,
    required this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: (){
          context.read<calcular>().Click(num);
        },
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(fillColor),
          ),
            child: Text(num,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(textColor),
                fontSize: 50,
            ),
      ),
        ),
      ),
    );
  }
}

/*
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: GestureDetector(
        onTap: () {
          context.read<DiceFaceCubit>().rollDice();
        },
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
          ),
          child: BlocBuilder<DiceFaceCubit, int?>(
            builder: (context, state) {
              return Text(state != null ? "$state" : "click");
            },
          ),
        ),
      ),
    ),
  );
}

 */
