import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  var size,height,width;
  final itemList = [
    'Historia',
    'Arquitectura',
    'Visitas',
  ];
 int id=0;
  
  Widget contentInformation(int? id, dynamic alto,dynamic ancho) {
    switch (id) {
      case 0:
      return  Container(
      padding: EdgeInsets.only(left: 10,right: 10),
            width: ancho,
            height: alto,
            child:Stack(
          children: [
            Positioned(
              top: 20,
              left: 0,
               width: ancho,
              child: Text("Te invitamos a conocer más acerca de la historia, la arquitectura y nuestros horarios de visitas. Disfrute conociendo más acerca de la cultura cienfueguera."),
          )
          ],
          )
      );
      case 1:
      return Container(
      padding: EdgeInsets.only(left: 10,right: 10),
            height: alto,
            width: ancho,
        child:Stack(
          children: [
            Positioned(
            top: 20,
            left: 0,
            width: ancho,
            child: Text("En esta sección encontrarás bellas imágenes en las que podrás regresar al pasado para disfrutar de esta maravillosa construcción."),
            )
          ],
        )
      );
      default:
            return Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              height: alto,
              width: ancho,
              child:Stack(
                  children: [
                    Positioned(
                    top: 20,
                    width: ancho-15,
                    child: Text("Te invitamos a conocer más acerca de la historia, la arquitectura y nuestros horarios de visitas. Disfrute conociendo más acerca de la cultura cienfueguera."),
                    ),
                      Positioned(
                      top: 80,
                      right: 0,
                      width: ancho/2-30,
                      child: Image.asset( 'assets/recibidor.jpg') ),
                    Positioned(
                    top: 80,
                    left: 0,
                    width: ancho/2,
                    child: Text("Te invitamos a conocer más acerca de la historia, la arquitectura y nuestros horarios de visitas. Disfrute conociendo más acerca de la cultura cienfueguera.",
                  //  style: TextStyle(),
                  ),
                    )
                  ],
              )
            );
  }
  
    
  }

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
        body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                  pinned: true,
                  snap: false,
                  floating: false,
                  expandedHeight: 200.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text("Información", style: TextStyle(color: Colors.white)),
                    background: Image.asset(
                      'assets/mapa.PNG',
                      fit: BoxFit.fill,
                    ),
                  ),

              ),
              SliverFillRemaining(
                child: Center(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children:[
                    SizedBox(height: 30,),
                    Container(
                      height: 80,
                      child: ListView.builder(
                          itemCount: itemList.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 4),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    id=index;
                                  });
                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      height: 50,
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Text(itemList[index],
                                          style: TextStyle(color: Colors.white, fontSize: 16)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 10,),
                    contentInformation(id,height*0.3,width),
                  ]
                ),

              ),),
    ]));
  }
}
