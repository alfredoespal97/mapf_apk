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
    'Presentación',
    'Interés',
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
              child: Text("El 1ro de abril de 1820 el solar 126 de la calle Bouyón, esquina San Fernando es mercedado a Don Julián Girondon, quien fue el primer propietario solo un año después de la colonización de la Fernandina del Jagua, no obstante el lugar donde se encuentra actualmente el museo iba a ser utilizado para la construcción de una aduana, qué años más tarde se construiría frente al actual muelle real. Sin embargo al no construirse esta, el 25 de marzo de 1825 se construye la primera casa de embarrado y techo de guano, la cual perteneció a la señora Juana D Hernández.\n "
              "Años mas tarde en 1862 la casa es comprada por Doña Dominga Hidalgo Gato de Cabrera y se reconstruye la vivienda con mampostería y teja. \n"
              "El 28 de julio de 1874 adquiere la propiedad Don Guillermo Terry Ortega, quién tras su fallecimiento, en 1881 deja la casa en herencia a su viuda, Caridad Latte Dicouvier. \n"
              "El 31 de mayo de 1892 el hacendado Don José Lombard y Gómez compra la propiedad y construye una casa-almacén que fue la base de la construcción que hoy existe, mientras que 8 años mas tarde el maestro de obras Eusebio Valle certifica dicha construcción. \n"
              "El 24 de abril de 1915 Don Jose Ferrer Siés, natural de la región de Begur en Cataluña España, compra la casa a los descendientes de Jose Lombard, quien encarga a Pablo Donato Carbonel la reconstrucción de la casa, llevándola a un eclecticismo espectacular, siendo uno de los más significativos de la ciudad. \n"
              "En 1927 José Ferrer hipoteca la propiedad a The Chase National Bank of City New York S.A, siendo embargado el 11 de diciembre de 1928, para mas tarde ser vendida nuevamente al cienfueguero Isidoro Cacicedo y Torriente quien vivió en ella hasta finalizada la década del 1970, estableciendo en los bajos de la construcción La Droguería La Cosmopolita. \n"
              "En 1980 el edificio pasa a ser propiedad del estado cubano, en los bajos se establecen los Almacenes de Medicamentos del Ministerio de Salud Pública, mientras que la planta alta se convierte en Casa de la Cultura. \n"
              "Finalmente en 2015 se entrega el segundo nivel de la edificación al Centro Provincial de Patrimonio Cultural de Cienfuegos, para la creación de un proyecto de desarrollo local que permita la restauración del inmueble y su conversión a Museo de las Artes."),
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
      case 2:
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
                child: Text("El Museo de las Artes Palacio Ferrer refuerza en su exposición el carácter moderno de una ciudad decimonona, donde el eclecticismo se vuelve expresión de lo moderno. \n"
                           "El museo inserta al contexto urbano-arquitectónico del centro histórico, por demás patrimonio histórico de la humanidad, se aísla de un discurso tradicional, qué muestra a las artes decorativas desde la óptica de presentar el modo de vida de las clases opulentas, sin interdialogar con la forma de vivir del resto de la comunidad. \n"
                            "Pensar de manera abarcadora en un museo que gestione y maneje las artes, es algo que no es común en Cuba, por eso, el Museo de las Artes Palacio Ferrer ofrece la posibilidad de poner a coexistir la arquitectura, el urbanismo, la música, las artes decorativas, el arte para niños, las artes visuales y la artesanía. La concepción de lo transitorio dentro de lo permanente, facilitara la renovación expositiva y la presencia de manifestaciones como la literatura, la danza y el teatro en exposiciones temporales. \n"
                            "Es un museo inclusivo e interactivo, así como, otras expresiones de la museología de la emotividad y los sentidos, que hacen transgredir las fronteras de la tradicionalidad museológica. \n"
                            "La concepción museográfica está en correspondencia con la intencionalidad manifiesta en la tesis de presentar elementos aislados que en su conjunto conforman un todo armónicamente tratado desde la confluencia artística. \n"
                            "La técnica artística es el leit-motiv y el inmueble el protagónico. Em la muestra expositiva nada es mas importante que el propio edificio, es el contenedor de la historia discursada, es una relación de concatenación que implica acontecer socio-cultural de una ciudad en permanente ejercicio de modernidad, entendida como capacidad e información y renovación desde si misma. Desarrollaba en la región, era felizmente expresada en los cánones del equilibrio, ritmo simétrico y elegancia en la forma de la arquitectura y el trazado urbano."),
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
                    child: Text(" Horario \n De martes a sábados de 10:00 AM – 6:00 PM \n Domingos 9:00 AM - 1:00 PM \n Precio – 5 CUP por persona \n Localización:  (pon la dirección con palabras y también las fotos)"),
                    ),
//                      Positioned(
//                      top: 80,
//                      right: 0,
//                      width: ancho/2-30,
//                      child: Image.asset( 'assets/recibidor.jpg') ),
//                    Positioned(
//                    top: 80,
//                    left: 0,
//                    width: ancho/2,
//                    child: Text("Te invitamos a conocer más acerca de la historia, la arquitectura y nuestros horarios de visitas. Disfrute conociendo más acerca de la cultura cienfueguera.",
//                  //  style: TextStyle(),
//                  ),
//                    )
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
