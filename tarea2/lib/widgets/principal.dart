import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  var figura="triangulo";
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text("fuguras geometricas"),
      ),
      body: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          

          const Divider(),

          RadioListTile(
            title: const Text("triangulo"),
            value: "triangulo",
            groupValue: figura,//AGRUPANDOLO EN LA MISMA CATEGORIA
            onChanged: (value){ //CADA VEZ QUE PRESIONE EE RADIO ESTOY LLAMANDO EL METODO
              setState(() { //METODO DE CAMBIO DE ESTADO PARA RECUPERAR VALOR DE ESE RADIO}
                figura=value.toString();
              });
            }
          ),
         
          RadioListTile(
            title: const Text("rectangulo"),
            value: "rectangulo",
            groupValue: figura,
            onChanged: (value){
              setState(() {
                figura=value.toString();
              });
            }
          ),
    
          boton(),
          boton1(),
          boton2()
        ],
      ),
    ),
    );
  }
   Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                
                 Navigator.pushNamed(context, '/$figura');
              }, 
              child: const Text("aceptar")),
          );
  }
    Widget boton1(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                
                 Navigator.pushNamed(context,'/pestanas');
              }, 
              child: const Text("pestañas")),
          );
  }
   Widget boton2(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                
                 Navigator.pushNamed(context,'/alert');
              }, 
              child: const Text("alertas")),
          );
  }

  

}
