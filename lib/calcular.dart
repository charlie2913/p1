import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';
class calcular extends Cubit<String?>{
  calcular(): super(null);
  double n1=0,n2=0;
  String historial='',texto='',r='',op='', help='',aux='';
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

      texto=r;
      aux=historial+"\n"+r;
      emit(aux);

  }
}