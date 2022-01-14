import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GaleriaPage extends StatefulWidget {
  const GaleriaPage({Key? key}) : super(key: key);

  @override
  _GaleriaPageState createState() => _GaleriaPageState();
}

class _GaleriaPageState extends State<GaleriaPage> {
  final imageList = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
  ];

  final salasList = [
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
    'Área interactiva para débiles visuales',
    'Acceso a Pergola, Bar, Mirador',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Galería de Imágenes")),
        body: Container(
            child: Column(children: <Widget>[
          Container(
            height: 80,
            child: ListView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 4),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          child: Image.asset(imageList[index],
                              height: 50, width: 100, fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        Container(
                          color: Colors.black26,
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          child: Text(salasList[index],
                              style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                  );
                }),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                margin: EdgeInsets.all(10),
                child: Image.asset(imageList[index]),
                //Text(salasList.elementAt(index)
              );
            },
          ),
        ])));
  }
}
