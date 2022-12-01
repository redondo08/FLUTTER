

import 'package:flutter/material.dart';
import 'package:bd/bd/bd.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  TextEditingController cnombre = TextEditingController();
  TextEditingController capellido = TextEditingController();
  TextEditingController cemail = TextEditingController();
  TextEditingController cpassword = TextEditingController();
   int respuesta = 0;
   void total() async{
   final r =  Bd.bd();
   }
  @override
  Widget build(BuildContext context) {
    total();
    return Scaffold(
        appBar: AppBar(
          title: const Text("registrar"),
        ),
        body: ListView(
          children: [
            caja1(),caja2(),caja3(),caja4(),boton()
          ],
        )
    );
  }
 Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              keyboardType: TextInputType.text,
              controller: cnombre,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite nombre")
              ),
            ),
          );
  }
  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              keyboardType: TextInputType.text,
              controller:   capellido,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite apellido")
              ),
            ),
          );
  }
  Widget caja3(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              keyboardType: TextInputType.emailAddress,
              controller: cemail,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite correo")
              ),
            ),
          );
  }

  Widget caja4(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: cpassword,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite password")
              ),
            ),
          );
  }
  Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                setState(() {
                  registrar();
                });
              }, 
              child:  Text("registrar $respuesta")),
          );
  }

  void registrar()async{
     respuesta = await Bd.regusuario(cnombre.text, capellido.text, cemail.text, cpassword.text);
     print(respuesta);
  }
}