import 'package:flutter/material.dart';
import '../widgets/principal.dart';
import '../widgets/form_imc.dart';
import '../widgets/form_sueldo.dart';
import '../widgets/datosPersonales.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/principal',
      routes:{
        '/principal':(context)=>const principal(),
        '/form_imc':(context) => const form_imc(),
        '/form_sueldo':(context) => const form_sueldo(),
        '/datosPersonales':(context) => const datosPersonales(), 
      },
    );
  }
}