import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';
import 'dart:io';
import 'package:flutter/material.dart';

import 'virtual.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {

  Widget hotspotButton({String? text, IconData? icon, VoidCallback? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(icon),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(color: Colors.black38, borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
        )
            : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recorrido Virtual"),
      ),
      body: Center(
          child: Stack(
            children: <Widget>[
              Positioned(top: 0,left: 0, child: Image.asset('assets/mapa_planta2.jpg')),
              Positioned(top: 40,left: 8, child: IconButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VirtualPage()));
              }, icon: Icon(Icons.remove_red_eye))),
            ],
          ),
      ),
    );
  }
}