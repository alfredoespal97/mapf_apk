import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mapf/views/galeria.dart';
import 'package:mapf/views/home.dart';
import 'package:mapf/views/image_view.dart';
import 'package:mapf/views/informacion.dart';
import 'package:mapf/views/mapa.dart';
import 'package:mapf/views/scanner.dart';
import 'package:mapf/views/virtual.dart';


final List<String> imageList = [
  'assets/img1.jpg',
  'assets/img2.jpg',
  'assets/img3.jpg',
  'assets/img4.jpg',
];

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(debugShowCheckedModeBanner: false,home: Splash());
        } else {
          // Loading is done, return the app:
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
              GetPage(name: '/scanner', page: () =>const ScannerPage()),
              GetPage(name: '/imageView', page: () =>ImagePage()),
            ],
          );
        }
      },
    );

  }
}
