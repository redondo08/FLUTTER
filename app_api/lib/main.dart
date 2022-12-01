import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/registrar.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter + PHP CRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => home(),
        '/registrar': (context) => registrar(),
        
      },
    );
  }
}