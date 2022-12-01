import 'package:flutter/material.dart';
import 'package:flutter_application_db/widgets/frmeditar.dart';
import 'package:flutter_application_db/widgets/listado_usuarios.dart';
import 'widgets/frmregistro.dart';
import 'widgets/frmregistroDS.dart';
void main(){
   runApp(const Elapp());
}


class Elapp extends StatelessWidget {
  const Elapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "fluter",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/frmregistro',
        routes: {
          '/frmregistro' :(context) => const Form1(),
          '/listado_usuarios' : (context) => const listado_usuarios(),
          '/frmeditar' :(context) => const frmeditar(),
          '/frmregistraDS' :(context) => const frmregistriDS(),
         
        },
    );
  }
  
}
