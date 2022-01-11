import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapf/galeria.dart';
import 'package:mapf/informacion.dart';
import 'package:mapf/virtual.dart';

import 'mapa.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(
            child: Column(children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0)),
                child: Image.asset('assets/foto_principal.jpg'),
              ),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
                child: new Column(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Image.asset('assets/light.png'),
                    Text(" Galería",
                        style: TextStyle(color: Colors.white, fontSize: 40.0)),
                    IconButton(onPressed: (){
                      Get.to(GaleriaPage());
                    }, icon: const Icon(Icons.arrow_right_alt),
                      iconSize: 32.0,),
                  ])
                ]),
              ),
              SizedBox(height: 30.0),
              Container(
                //padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Image.asset('assets/light.png'),
                    Text(" Información",
                        style: TextStyle(color: Colors.white, fontSize: 40.0)),
                    IconButton(
                        iconSize: 32.0,
                        onPressed: (){
                          Get.to(InformationPage());
                        }, icon: const Icon(Icons.arrow_right_alt)),
                  ])
                ]),
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Image.asset('assets/light.png'),
                    Text(" Recorrido Virtual",
                        style: TextStyle(color: Colors.white, fontSize: 30.0)),
                    IconButton(
                        iconSize: 32.0,
                        onPressed: (){
                          Get.to(VirtualPage());
                     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VirtualPage()));
                    }, icon: const Icon(Icons.arrow_right_alt)),
                  ])
                ]),
              ),
            ])),
    ])));
  }
}
