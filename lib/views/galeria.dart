import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapf/views/image_view.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';


class GaleriaPage extends StatefulWidget {
  const GaleriaPage({Key? key}) : super(key: key);

  @override
  _GaleriaPageState createState() => _GaleriaPageState();
}

class _GaleriaPageState extends State<GaleriaPage> {

  late List<String> imageList= [
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
    'assets/mirador.jpg',
  ];
  final imageListado = [
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
    'assets/mirador.jpg',
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
    'Terrazas y Balcones',
    'Mirador',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

//  @override
//  void setState(VoidCallback fn) {
//    // TODO: implement setState
//    super.setState(fn);
//    imageList=imageListado;
//  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Galería de Imágenes")),
        body: SingleChildScrollView(
          child:  Container(
              child: Column(children: <Widget>[
                SizedBox(height: 20,),
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
                            onTap: (){
                                setState(() {
                                  String val=imageListado.elementAt(index);
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
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                    children: imageList.map((img) {
                      return GridTile(
                          child: Container(
                            child:GestureDetector(
                              onTap: (){
                                Get.to(ImagePage(),arguments: img);
                              },
                              child: Hero(
                                tag: img,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(img,fit: BoxFit.cover,)),
                              ),
                            )

                          )
                      );
                    }).toList(),
                    ),
                )
              ])),
        )

    );
  }
  
  
  int imageAt(String name){
    return imageList.indexOf(name);
  }

//  void showToast(String msg) {
//    Fluttertoast.show(msg, context, duration: Toast.LENGTH_SHORT, gravity:  ToastGravity.BOTTOM);
//  }
  
}
