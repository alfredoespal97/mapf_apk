//import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapf/views/galeria.dart';
import 'package:mapf/views/informacion.dart';
import 'package:mapf/views/virtual.dart';

import 'package:mapf/views/mapa.dart';
import 'package:mapf/views/scanner.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titles = [
    "Galería de Imágenes",
    "QR Scanner",
    "Recorrido Virtual",
    "Información"
  ];
  final subtitles = [
    "En esta sección encontrarás bellas imágenes en las que podrás regresar al pasado para disfrutar de esta maravillosa construcción.",
    "Te invitamos a conocer más acerca de la historia, la arquitectura y nuestros horios de visitas. Disfrute conociendo más acerca de la cultura cienfueguera.",
    "Te invitamos a conocer más acerca de la historia, la arquitectura y nuestros horios de visitas. Disfrute conociendo más acerca de la cultura cienfueguera.",
    "Te invitamos a conocer más acerca de la historia, la arquitectura y nuestros horarios de visitas. Disfrute conociendo más acerca de la cultura cienfueguera.",
  ];
  final icons = [
    Icons.image,
    Icons.qr_code_scanner,
    Icons.remove_red_eye,
    Icons.info
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              //padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50)),
                  child: Image.asset('assets/foto_principal.jpg'))),
          Expanded(
            child: ListView.builder(
                itemCount: titles.length,
                padding: EdgeInsets.all(20.0),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: ListTile(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Get.to(GaleriaPage());
                              break;
                            case 1:
                              // handleQrScanner();
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
                        title: Text(
                          titles[index],
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        subtitle: Text(subtitles[index],
                            style: TextStyle(color: Colors.white)),
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(icons[index]),
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }

  // handleQrScanner() async {
  //   var result = await BarcodeScanner.scan();

  //   Get.to(ScannerPage(), arguments: result.rawContent);
  // }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor:
          lightMode ? const Color(0xffe1f5fe) : const Color(0xff042a49),
      body: Center(
          child: lightMode
              ? Image.asset('assets/pantalla_inicial.png')
              : Image.asset('assets/pantalla_inicial.png')),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(const Duration(seconds: 3));
  }
}
