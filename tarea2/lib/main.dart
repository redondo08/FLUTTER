import 'package:flutter/material.dart';
import 'package:tarea2/widgets/resulrecta.dart';
import 'package:tarea2/widgets/triangulo.dart';
import '../widgets/principal.dart';
import '../widgets/rectangulo.dart';
import '../widgets/pestanas.dart';
import '../widgets/alert.dart';


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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/principal',
      routes:{
        '/principal':(context)=>const principal(),
        '/triangulo':(context)=>const triangulo(),
        '/rectangulo':(context)=>const rectangulo(),
        '/resulrecta':(context)=>const resulrecta(),
         '/pestanas':(context)=>const pestanas(),
         '/alert':(context)=>const alert(),
      },
    );
  }
}