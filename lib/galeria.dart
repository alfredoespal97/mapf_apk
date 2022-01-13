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
        body: GridView.builder(
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
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              margin: EdgeInsets.all(10),
              child: Image.asset(imageList[index]),
                //Text(salasList.elementAt(index)
            );
          },
        )
    );
  }
}
