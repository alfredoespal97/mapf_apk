import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panorama/panorama.dart';
import 'dart:io';
import 'package:flutter/material.dart';

import 'package:mapf/views/home.dart';
import 'package:mapf/views/mapa.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class VirtualPage extends StatefulWidget {
  const VirtualPage({Key? key}) : super(key: key);

  @override
  _VirtualPageState createState() => _VirtualPageState();
}

class _VirtualPageState extends State<VirtualPage> {

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
       // leading: Icon(Icons.arrow_back)
      ),
       body: Panorama(
        // croppedArea: Rect.fromLTWH(1265.0, 633.0, 2532.0, 1265.0),
        // croppedFullWidth: 5066.0,
        // croppedFullHeight: 2533.0,
         hotspots: [
           Hotspot(
             latitude: -15.0,
             longitude: -129.0,
             width: 110,
             height: 100,
             widget: hotspotButton(text: "Siguiente habitación", icon: Icons.open_in_browser, onPressed: () => setState(() => {})),
           ),
           Hotspot(
             latitude: -42.0,
             longitude: -46.0,
             width: 60.0,
             height: 60.0,
             widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => {})),
           ),
           Hotspot(
             latitude: -33.0,
             longitude: 123.0,
             width: 60.0,
             height: 60.0,
             widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () {}),
           ),
         ],
         child: Image.asset('assets/panorama2.jpg'),
       ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.map),
          onPressed: (){
              //Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MapaPage()));
          }),
    );
  }
}