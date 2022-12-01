import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../bd/bd.dart';

class frmeditar extends StatefulWidget {
  const frmeditar({super.key});

  @override
  State<frmeditar> createState() => _frmeditarState();
  
}


class _frmeditarState extends State<frmeditar> {
  TextEditingController  nombre =  TextEditingController();
  TextEditingController  apellido =  TextEditingController();
  TextEditingController  email =  TextEditingController();
  TextEditingController  id =  TextEditingController();
  Widget build(BuildContext context) {
     Map argumentos= ModalRoute.of(context)?.settings.arguments as Map ;
     nombre.text=argumentos['nombre'];
     apellido.text=argumentos['apellido'];
     email.text=argumentos['correo'];
     id.text=argumentos['id'].toString();

return Scaffold(
      appBar: AppBar(
        title: const Text("editar"),
      ),
      body: Column(
        children: [
          
          caja1(),
          caja2(),
          caja3(),
          boton()
         
        ]
        
     
    ),);
  }
  Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              controller: nombre,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite nombre"),
                
              ),
            ),
          );
  }
  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              keyboardType: TextInputType.text,
               controller: apellido,
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
            controller: email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite correo")
              ),
            ),
          );
  }

  
  Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              
              onPressed: (){
               
                  editar();
                
              }, 
              child:  Text("editar")),
          );
  }
   void editar()async{
    int idd= int.parse(id.text);
     var respuesta = await Bd.editusuario( idd, nombre.text, apellido.text, email.text);
     print(respuesta);
  }
  
    
}