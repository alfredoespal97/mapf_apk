import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'galeria.dart';
import 'home.dart';
import 'informacion.dart';
import 'mapa.dart';
import 'virtual.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MAPF',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () =>const MyHomePage()),
        GetPage(name: '/galeria', page: () =>const GaleriaPage()),
        GetPage(name: '/informacion', page: () =>const InformationPage()),
        GetPage(name: '/mapa', page: () =>const VirtualPage()),
        GetPage(name: '/virtual', page: () =>const MapaPage()),
      ],
    );
  }
}
