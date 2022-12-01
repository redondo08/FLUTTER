import 'package:flutter/material.dart';
import '../widgets/etiqueta.dart';
import '../widgets/etiquetas.dart';
import '../widgets/boton.dart';
import '../widgets/caja.dart';
import '../widgets/boton1.dart';
import '../widgets/boton2.dart';
import '../widgets/caja.dart';
import '../widgets/radio.dart';
import '../widgets/checkbox.dart';
import '../widgets/total_compra.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Boton1(),
    );
  }
}



