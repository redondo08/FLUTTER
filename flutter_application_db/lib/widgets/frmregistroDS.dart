import 'dart:ui';

import 'package:flutter/material.dart';
class frmregistriDS extends StatefulWidget {
  const frmregistriDS({super.key});

  @override
  State<frmregistriDS> createState() => _frmregistriDSState();
}

class _frmregistriDSState extends State<frmregistriDS> {
   TextEditingController cnombre = TextEditingController();
  TextEditingController capellido = TextEditingController();
  TextEditingController cemail = TextEditingController();
  TextEditingController cpassword = TextEditingController();
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: 
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image:  DecorationImage(image: AssetImage("img/uno.jpg"),
                fit: BoxFit.fill
                ), 
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 90, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      RichText(
                        text:  const TextSpan(
                          text:"bienvenido a siglo XII",
                          style: TextStyle(
                            color:  Colors.red,
                            fontSize: 25,
                            letterSpacing: 3
                          ),
                          children: [
                            TextSpan(
                          style: TextStyle(
                            color:  Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),),
                          ]
                        ),
                      ),
                      const Text("Registrate", style:  TextStyle(letterSpacing: 3, color: Colors.yellow),)
                ]
                ),
              ),
            )
            ),
            Positioned(
              top: 250,
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width-40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    spreadRadius: 50,
                  )]
                ),
                child: Column(
                  children: [
                      cajaTExto("dijite nombre", Icons.people, cnombre),
                      cajaTExto("apellido", Icons.people, capellido),
                      cajaTExto("correo", Icons.email, cemail),
                      cajaTExto("contraceña", Icons.password, cpassword),
                      boton()
                  ],
                ),
              )
              )
        ],
      ),
    );
  } 

  Widget cajaTExto(String hint, IconData ic , TextEditingController variable ){
   
    
    return Padding(padding: const EdgeInsets.all(8),
    child: TextField(
      controller: variable ,
      decoration: InputDecoration(
        prefixIcon: Icon(ic,color: Colors.red,),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:  Colors.grey),
          borderRadius:  BorderRadius.all(Radius.circular(25))
        ),
        focusedBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow),
          borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        hintText: hint
        ),
    ),
    );
  }

  Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton( 
              style:  ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                
              ),
              

              onPressed: (){
                setState(() {
                  
                });
              }, 
              child:  Text("registrar ")),
          );
  }
}


