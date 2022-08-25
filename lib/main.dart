import 'package:flutter/material.dart';
import 'package:p1/widgets/boton.dart';
//import 'package:math_expressions/math_expressions.dart';



void main() {
  runApp(const CalculadoraApp());
}

class CalculadoraApp extends StatefulWidget {
  const CalculadoraApp({Key? key}) : super(key: key);

  @override
  State<CalculadoraApp> createState() => _CalculadoraAppState();
}

class _CalculadoraAppState extends State<CalculadoraApp> {
  double n1=0,n2=0;
  String historial='',texto='',r='',op='', help='';
  void Click(String valor){
    print(valor);
    if(valor=='C'){
      texto='';
      n1=0;
      n2=0;
      r='';
      historial='';
    }else if(valor == '.'){
      r=texto.toString()+valor.toString();
      help= '.';

    }else if(valor=='+'||valor=='-'||valor=='*'||valor=='/'){
      n1=double.parse(texto);
      r='';
      op=valor;
    }else if(valor=='='){
      n2=double.parse(texto);
      if(op=='+'){
        r=(n1+n2).toString();
        historial=n1.toString()+op.toString()+n2.toString();
      }
      if(op=='-'){
        r=(n1-n2).toString();
        historial=n1.toString()+op.toString()+n2.toString();
      }
      if(op=='*'){
        r=(n1*n2).toString();
        historial=n1.toString()+op.toString()+n2.toString();
      }
      if(op=='/'){
        r=(n1/n2).toString();
        historial=n1.toString()+op.toString()+n2.toString();
      }
    }else{
      if(help=='.'){
        r=texto.toString()+valor.toString();
      }else{
        r=int.parse(texto+valor).toString();
      }

    }
    setState(() {
      texto=r;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Basica',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora Flutter'),
        ),
        backgroundColor: (Colors.black),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    historial,
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0x66FFFFFF)),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    texto,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 48,
                    color: Colors.white),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Boton(num: '=',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),

                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boton(num: '9',
                fillColor: 0xFF8ac4d0,
                textColor: 0xFF000000,
                textSize: 20,
                    callback: Click),
                Boton(num: '8',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 20,
                    callback: Click),
                Boton(num: '7',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 20,
                    callback: Click),
                Boton(num: '+',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 20,
                    callback: Click),

              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Boton(num: '6',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: '5',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: '4',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: '-',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Boton(num: '3',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: '2',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: '1',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: '*',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Boton(num: '0',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: '.',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                      callback: Click),
                  Boton(num: 'C',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback:Click),
                  Boton(num: '/',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callback: Click),

                ],
              ),

          ],

          ),
        ),
      )
    );
  }
}
