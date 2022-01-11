import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapf/galeria.dart';
import 'package:mapf/informacion.dart';
import 'package:mapf/virtual.dart';

import 'mapa.dart';
import 'scanner.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final titles = ["Galería de Imágenes", "QR Scanner", "Recorrido Virtual", "Información"];
  final subtitles = [
    "En esta sección encontrarás bellas\n imágenes en las que podrás regresar\n al pasado para disfrutar de esta \n maravillosa construcción.",
    "Te invitamos a conocer más acerca \nde la historia, la arquitectura y \n nuestros horios de visitas. Disfrute\n conociendo más acerca de la cultura cienfueguera.",
    "Te invitamos a conocer más acerca \nde la historia, la arquitectura y \n nuestros horios de visitas. Disfrute\n conociendo más acerca de la cultura cienfueguera.",
    "Te invitamos a conocer más acerca \nde la historia, la arquitectura y \n nuestros horios de visitas. Disfrute\n conociendo más acerca de la cultura cienfueguera.",
  ];
  final icons = [Icons.image, Icons.qr_code_scanner, Icons.remove_red_eye,Icons.info];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Container(
              //padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                child:  Image.asset('assets/foto_principal.jpg')
              )
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: titles.length,
                  padding: EdgeInsets.all(20.0),
                  itemBuilder: (context, index){
                    return  Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: ListTile(
                          onTap: (){
                            switch (index){
                              case 0:
                                Get.to(GaleriaPage());
                                break;
                              case 1:
                                Get.to(ScannerPage());
                                break;
                              case 2:
                                Get.to(VirtualPage());
                                break;
                              case 3:
                                Get.to(InformationPage());
                                break;
                            }
                          },
                          title: Text(titles[index],style: TextStyle(color: Colors.white,fontSize: 25),),
                          subtitle: Text(subtitles[index],style: TextStyle(color: Colors.white)),
                          leading: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            child:Icon(icons[index]) ,
                          )
                      ),
                    );
//                    return Card(
//                        elevation: 5,
//                        margin: EdgeInsets.all(6),
//                        color: Theme.of(context).primaryColor,
//                        child: ListTile(
//                            onTap: (){
//                              switch (index){
//                                case 0:
//                                  Get.to(GaleriaPage());
//                                  break;
//                                case 1:
//                                  Get.to(ScannerPage());
//                                  break;
//                                case 2:
//                                  Get.to(VirtualPage());
//                                  break;
//                                case 3:
//                                  Get.to(InformationPage());
//                                  break;
//                              }
//                            },
//                            title: Text(titles[index],style: TextStyle(color: Colors.white,fontSize: 25),),
//                            subtitle: Text(subtitles[index],style: TextStyle(color: Colors.white)),
//                            leading: CircleAvatar(
//                              backgroundColor: Theme.of(context).primaryColor,
//                              child:Icon(icons[index]) ,
//                            )
//                        )
//                    );
                  }
              ),
            ),
          ],
        ),

      );
  }



//  SingleChildScrollView(
//  child: new Column(children: <Widget>[
//  Container(
//  decoration: BoxDecoration(
//  borderRadius: BorderRadius.all(Radius.circular(20.0)),
//  color: Theme.of(context).primaryColor,
//  ),
//  child: Column(children: <Widget>[
//  Row(children: <Widget>[
//  Image.asset('assets/light.png'),
//  Text(" Galería",
//  style: TextStyle(color: Colors.white, fontSize: 40.0)),
//  IconButton(onPressed: (){
//  Get.to(GaleriaPage());
//  }, icon: const Icon(Icons.arrow_right_alt),
//  iconSize: 32.0,),
//  ])
//  ]),
//  ),
//  SizedBox(height: 30.0),
//  Container(
//  //padding: EdgeInsets.all(20.0),
//  decoration: BoxDecoration(
//  borderRadius: BorderRadius.all(Radius.circular(20.0)),
//  color: Theme.of(context).primaryColor,
//  ),
//  child: Column(children: <Widget>[
//  Row(children: <Widget>[
//  Image.asset('assets/light.png'),
//  Text(" Información",
//  style: TextStyle(color: Colors.white, fontSize: 40.0)),
//  IconButton(
//  iconSize: 32.0,
//  onPressed: (){
//  Get.to(InformationPage());
//  }, icon: const Icon(Icons.arrow_right_alt)),
//  ])
//  ]),
//  ),
//  SizedBox(height: 30.0),
//  Container(
//  decoration: BoxDecoration(
//  borderRadius: BorderRadius.all(Radius.circular(20.0)),
//  color: Theme.of(context).primaryColor,
//  ),
//  child: Column(children: <Widget>[
//  Row(children: <Widget>[
//  Image.asset('assets/light.png'),
//  Text(" Recorrido Virtual",
//  style: TextStyle(color: Colors.white, fontSize: 30.0)),
//  IconButton(
//  iconSize: 32.0,
//  onPressed: (){
//  Get.to(VirtualPage());
//  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VirtualPage()));
//  }, icon: const Icon(Icons.arrow_right_alt)),
//  ])
//  ]),
//  ),
//  ])),
}
