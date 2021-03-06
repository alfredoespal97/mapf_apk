//import 'package:barcode_scan2/barcode_scan2.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapf/views/galeria.dart';
import 'package:mapf/views/informacion.dart';
import 'package:mapf/views/virtual.dart';
import 'package:http/http.dart' as http;
import 'package:mapf/views/mapa.dart';
import 'package:mapf/views/scanner.dart';
import 'package:mapf/widgets/custom_dialog_box.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final titles = [
    "Galería",
    "QR Scanner",
    "Recorrido Virtual",
    "Información"
  ];
  final subtitles = [
    "Descubra las bellezas que guarda el Museo de Artes Placio Ferrer.",
    "Descubra historia por medio de un código.",
    "Visite nuestras instalaciones de forma remota.",
    "Conozca acerca de nuestra historia y las visitas al museo",
  ];
  final icons = [
    Icons.image,
    Icons.qr_code_scanner,
    Icons.remove_red_eye,
    Icons.info
  ];

  late List? recibidor,etnografia,comedor,salon,dormitorio,atrapasuennos,banno,av,musica,artesania,polivalente,corredor,terraza,escaleras,exteriores,sala_inter ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (mounted) {
      fetchSalasData();
    }
    sala_inter=[
      {"id":1,
        "img":"https://raw.githubusercontent.com/alfredoespal97/mapf_json/main/assets/sala_interactiva/int1.jpg"},
      {"id":2,
        "img":"https://raw.githubusercontent.com/alfredoespal97/mapf_json/main/assets/sala_interactiva/int2.jpg"},
      {"id":3,
        "img":"https://raw.githubusercontent.com/alfredoespal97/mapf_json/main/assets/sala_interactiva/int3.jpg"}
    ];
  }



  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height ;


    return Scaffold(
      body: Column(
        children: [
          Container(
              height: height*0.45,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: ExactAssetImage('assets/foto_principal2.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(icon: Icon(Icons.info,color: Colors.white,),
                  onPressed: (){
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return CustomDialogBox(
                            title: "Museo de las Artes Palacio Ferrer",
                            descriptions: "Autores: María de Jesús Ríos García,\n Ing Alfredo Rafael Espinosa Palenque",
                            text: "Salir",
                            img: Image.asset("assets/logo2.png"),
                          );
                        }
                    );
                  }
                    ),
                ],
              ),
              ),
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
                              Get.to(GaleriaPage(),arguments: sala_inter);
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

  //Funcion para llamar datos de las salas del museo
  void fetchSalasData() async {
    var url = Uri.https(
        "raw.githubusercontent.com", "/alfredoespal97/mapf_json/main/mapf_db.json");
    await http.get(url).then((value) {
      print(value.statusCode);
      if (value.statusCode == 200) {
        var decodedJsonData = jsonDecode(value.body);
        av = decodedJsonData['artes_visuales'];
        artesania = decodedJsonData['artesania'];
        atrapasuennos = decodedJsonData['atrapasueños'];
        banno = decodedJsonData['banno'];
        comedor = decodedJsonData['comedor'];
        corredor = decodedJsonData['corredor'];
        dormitorio = decodedJsonData['dormitorio'];
        escaleras = decodedJsonData['escaleras'];
        exteriores = decodedJsonData['exteriores'];
        etnografia = decodedJsonData['etnografia'];
        musica = decodedJsonData['musica'];
        polivalente = decodedJsonData['polivalente'];
        recibidor = decodedJsonData['recibidor'];
        sala_inter = decodedJsonData['sala_interactiva'];
        salon = decodedJsonData['sala_principal'];
        terraza = decodedJsonData['terraza'];
        setState(() {});
      } else {
        print('Request failed with status: ${value.statusCode}.');
      }
    }
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
              ? Image.asset('assets/pantalla_inicial.png',fit: BoxFit.fill,)
              : Image.asset('assets/pantalla_inicial.png',fit: BoxFit.fill,)),
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
