import 'dart:math';

import 'package:flutter/material.dart';

class triangulo extends StatefulWidget {
  const triangulo({super.key});

  @override
  State<triangulo> createState() => _trianguloState();
}

class _trianguloState extends State<triangulo> {
   TextEditingController cbase = TextEditingController();
  TextEditingController caltura = TextEditingController();
  double base = 0;
  double altura = 0;
  double resul = 0;
 
  String calculo = "perimetro";
  void calcular(){
    setState(() {
       base= double.parse(cbase.text);
     altura= double.parse(caltura.text);
     if(calculo == "perimetro"){
      var b = base /2;
      var lado= (b*b)+(altura*altura);
      var re = sqrt(lado);
      resul = base + re +re ;
      
     }
     else{
      resul =(base*altura)/2;
     }
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("triangulo"),
      ),
      body: Column(
        children: [
          caja1(),
          caja2(),
          radio1(),
          radio2(),
          boton(),
          resultado(),
          ],
      ),
    );
  }
  Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              controller: cbase,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite base")
              ),
            ),
          );
  }
  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              controller: caltura,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite altura")
              ),
            ),
          );
  }
   Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                calcular();
              }, 
              child: const Text("Calcular")),
          );
  }
  
  Widget resultado(){
    return  Text("el resultado es: $resul" ,
    style: const TextStyle(color: Color.fromARGB(255, 0, 140, 255), fontSize: 20),
    textAlign: TextAlign.center,
    );
  }

  Widget radio1(){
    return RadioListTile(
        title: const Text("perimetro"),
        value: "perimetro",
        groupValue: calculo,//AGRUPANDOLO EN LA MISMA CATEGORIA
        onChanged: (value){ //CADA VEZ QUE PRESIONE EE RADIO ESTOY LLAMANDO EL METODO
          setState(() { //METODO DE CAMBIO DE ESTADO PARA RECUPERAR VALOR DE ESE RADIO}
            calculo=value.toString();
          });
        }
      );
  }

   Widget radio2(){
    return RadioListTile(
        title: const Text("area"),
        value: "area",
        groupValue: calculo,//AGRUPANDOLO EN LA MISMA CATEGORIA
        onChanged: (value){ //CADA VEZ QUE PRESIONE EE RADIO ESTOY LLAMANDO EL METODO
          setState(() { //METODO DE CAMBIO DE ESTADO PARA RECUPERAR VALOR DE ESE RADIO}
            calculo=value.toString();
          });
        }
      );
  }
}