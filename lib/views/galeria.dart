import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mapf/views/image_view.dart';
import 'package:http/http.dart' as http;
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GaleriaPage extends StatefulWidget {
  const GaleriaPage({Key? key}) : super(key: key);

  @override
  _GaleriaPageState createState() => _GaleriaPageState();
}

class _GaleriaPageState extends State<GaleriaPage> {
  late List? recibidor,
      etnografia,
      comedor,
      salon,
      dormitorio,
      atrapasuennos,
      banno,
      av,
      musica,
      artesania,
      polivalente,
      corredor,
      terraza,
      escaleras,
      exteriores,
      sala_inter;

  var list = Get.arguments;


  late List<String> imageList = [
    'assets/sala_int.jpg',
    'assets/recibidor.jpg',
    'assets/etnografia.jpg',
    'assets/comedor.jpg',
    'assets/salon.jpg',
    'assets/dormitorio.jpg',
    'assets/atrapasueños.jpg',
    'assets/banno.jpg',
    'assets/av.jpg',
    'assets/musica.jpg',
    'assets/artesania.jpg',
    'assets/polivalente.jpg',
    'assets/corredor.jpg',
    'assets/terraza.jpg',
    'assets/escaleras.jpg',
    'assets/exteriores.jpg',
  ];
  late final imageListado = [
    'assets/sala_int.jpg',
    'assets/recibidor.jpg',
    'assets/etnografia.jpg',
    'assets/comedor.jpg',
    'assets/salon.jpg',
    'assets/dormitorio.jpg',
    'assets/atrapasueños.jpg',
    'assets/banno.jpg',
    'assets/av.jpg',
    'assets/musica.jpg',
    'assets/artesania.jpg',
    'assets/polivalente.jpg',
    'assets/corredor.jpg',
    'assets/terraza.jpg',
    'assets/escaleras.jpg',
    'assets/exteriores.jpg',
  ];

  final salasList = [
    'Sala Interactiva',
    'Recibidor',
    'Etnografia',
    'Comedor',
    'Salón',
    'Dormitorio',
    'Atrapasueños',
    'Baño museable',
    'Artes Visuales',
    'Música',
    'Artesania',
    'Polivalente',
    'Corredor',
    'Terrazas',
    'Escaleras',
    'Exteriores',
  ];

  int id = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (mounted) {
      fetchSalasData();
    }
    Fluttertoast.showToast(
        msg: "Esta sección requiere conexión a internet",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black26,
        textColor: Colors.white,
        fontSize: 16.0
    );
    // imageList=list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Galería de Imágenes")),
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  itemCount: imageListado.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 4),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            String val = imageListado.elementAt(index);
                            id = index;
                            llenarListadoImagenes(index);
                            imageList.clear();
                            imageList.add(val);
                          });
                        },
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              child: Image.asset(imageListado[index],
                                  height: 50, width: 100, fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black26,
                              ),
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(salasList[index],
                                  style: TextStyle(color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: imageList != null
                  ? GridView.count(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      mainAxisSpacing: 6.0,
                      crossAxisSpacing: 6.0,
                      children: llenarListadoImagenes(id).map((img) {
                        return GridTile(
                            child: Container(
                                child: GestureDetector(
                                    onTap: () {
                                      Get.to(ImagePage(), arguments: img);
                                    },
                                    child: Hero(
                                      tag: img,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: CachedNetworkImage(
                                          imageUrl: img,
                                          fit: BoxFit.cover,
                                        ),
                                        //child: Image.asset(img,fit: BoxFit.cover,)),
                                      ),
                                    ))));
                      }).toList(),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            )
          ])),
        ));
  }

  int imageAt(String name) {
    return imageList.indexOf(name);
  }

//Funcion para llamar datos de las salas del museo
  void fetchSalasData() async {
    var url = Uri.https("raw.githubusercontent.com",
        "/alfredoespal97/mapf_json/main/mapf_db.json");
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
    });
  }

  List<String> llenarImageList(List lista) {
    fetchSalasData();
    imageList.clear();
    for (int i = 0; i < lista.length; i++) {
      imageList.add(lista[i]['img']);
    }
    return imageList;
  }

  final salasL = [
    'Sala Interactiva',
    'Recibidor',
    'Etnografia',
    'Comedor',
    'Salón',
    'Dormitorio',
    'Atrapasueños',
    'Baño museable',
    'Artes Visuales',
    'Música',
    'Artesania',
    'Polivalente',
    'Corredor',
    'Terrazas',
    'Escaleras',
    'Exteriores',
  ];

  List<String> llenarListadoImagenes(int id) {
    switch (id) {
      case 0:
       // return imageList = llenarImageList(sala_inter!);
        imageList.clear();
        imageList.add("https://raw.githubusercontent.com/alfredoespal97/mapf_json/main/assets/sala_interactiva/int1.jpg");
        imageList.add("https://raw.githubusercontent.com/alfredoespal97/mapf_json/main/assets/sala_interactiva/int2.jpg");
        imageList.add("https://raw.githubusercontent.com/alfredoespal97/mapf_json/main/assets/sala_interactiva/int3.jpg");
        return imageList;
        break;
      case 1:
        return imageList = llenarImageList(recibidor!);
        break;
      case 2:
        return imageList = llenarImageList(etnografia!);
        break;
      case 3:
        return imageList = llenarImageList(comedor!);
        break;
      case 4:
        return imageList = llenarImageList(salon!);
        break;
      case 5:
        return imageList = llenarImageList(dormitorio!);
        break;
      case 6:
        return imageList = llenarImageList(atrapasuennos!);
        break;
      case 7:
        return imageList = llenarImageList(banno!);
        break;
      case 8:
        return imageList = llenarImageList(av!);
        break;
      case 9:
        return imageList = llenarImageList(musica!);
        break;
      case 10:
        return imageList = llenarImageList(artesania!);
        break;
      case 11:
        return imageList = llenarImageList(polivalente!);
        break;
      case 12:
        return imageList = llenarImageList(corredor!);
        break;
      case 13:
        return imageList = llenarImageList(terraza!);
        break;
      case 14:
        return imageList = llenarImageList(escaleras!);
        break;
      default:
        return imageList = llenarImageList(exteriores!);
        break;
    }
  }
}
