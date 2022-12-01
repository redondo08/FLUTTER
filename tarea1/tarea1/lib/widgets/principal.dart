import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
           boton(),
           boton1()
            
        ]
        ),
      ),
    );
  }
  Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/form_imc');
              }, 
              child: const Text("IMC")),
          );
  }
  Widget boton1(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/form_sueldo');
              }, 
              child: const Text("Calcular sueldo de enpleado")),
          );
  }

}