import 'package:flutter/material.dart';

class pestanas extends StatelessWidget {
  const pestanas({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length:5,
   child: Scaffold(
      appBar: AppBar(
        title: const Text("Pestañas"),
        backgroundColor:Colors.greenAccent,
        bottom: const TabBar(tabs:[
          Tab(
            icon: Icon(Icons.access_alarm),
          ),
          Tab(
            icon: Icon(Icons.access_time),
          ),
          Tab(
            icon: Icon(Icons.add_alert),
          ),
          Tab(
            icon: Icon(Icons.add_a_photo_outlined),
          ),
          Tab(
            icon: Icon(Icons.zoom_out_map),
          ),
        ]),
      ),
      body:   TabBarView(children: [
        Center( child: Column(children: const [
         Text("data"),
        ],),),
        Column(children: const [
         Text("pagina2"),
        ],),
        Column(children: const [
         Text("pagina3"),
        ],),
        Column(children: const [
         Text("pagina4"),
        ],),
       Column(children: const [
         Text("pagina5"),
        ],),
      ]),
    ), 
    );
  }
}