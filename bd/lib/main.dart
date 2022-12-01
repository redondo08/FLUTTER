
import 'package:flutter/material.dart';
import 'widgets/frmregistro.dart';

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
         
        },
    );
  }
  
}