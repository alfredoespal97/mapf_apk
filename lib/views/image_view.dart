import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:get/get.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {

  String imagen=Get.arguments;

  final imageList = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Galería de Imágenes"),centerTitle: true,),
      body: Container(
        child: PhotoView(
          imageProvider: NetworkImage(imagen),
          //AssetImage(imagen),
          heroAttributes: PhotoViewHeroAttributes(tag: imagen),
        )
// PhotoViewGallery.builder(
//          itemCount: imageList.length,
//          builder: (context, index) {
//           // index=imageAt(imagen);
//            return PhotoViewGalleryPageOptions(
//              imageProvider: AssetImage(
//                imageList.elementAt(index),
//              ),
//              minScale: PhotoViewComputedScale.contained * 0.8,
//              maxScale: PhotoViewComputedScale.covered * 2,
//              heroAttributes: PhotoViewHeroAttributes(tag: imagen),
//            );
//          },
//          scrollPhysics: BouncingScrollPhysics(),
//          backgroundDecoration: BoxDecoration(),
//          enableRotation: false,
//        ),
      ),);
  }

  int imageAt(String name){
    return imageList.indexOf(name);
  }
}
