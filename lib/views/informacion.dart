import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  var size,height,width;
  String optionSelected="";

  final itemList = [
    'Inicio',
    'Historia',
    'Interés',
  ];
 int id=0;
  
  Widget contentInformation(int? id, dynamic alto,dynamic ancho) {
    switch (id) {
      case 0:
      return Text("El Museo de las Artes Palacio Ferrer refuerza en su exposición el carácter moderno de una ciudad decimonona, donde el eclecticismo se vuelve expresión de lo moderno. \n"
      "El museo inserta al contexto urbano-arquitectónico del centro histórico, por demás patrimonio histórico de la humanidad, se aísla de un discurso tradicional, qué muestra a las artes decorativas desde la óptica de presentar el modo de vida de las clases opulentas, sin interdialogar con la forma de vivir del resto de la comunidad. \n"
  "Pensar de manera abarcadora en un museo que gestione y maneje las artes, es algo que no es común en Cuba, por eso, el Museo de las Artes Palacio Ferrer ofrece la posibilidad de poner a coexistir la arquitectura, el urbanismo, la música, las artes decorativas, el arte para niños, las artes visuales y la artesanía. La concepción de lo transitorio dentro de lo permanente, facilitara la renovación expositiva y la presencia de manifestaciones como la literatura, la danza y el teatro en exposiciones temporales. \n"
  "Es un museo inclusivo e interactivo, así como, otras expresiones de la museología de la emotividad y los sentidos, que hacen transgredir las fronteras de la tradicionalidad museológica. \n"
  "La concepción museográfica está en correspondencia con la intencionalidad manifiesta en la tesis de presentar elementos aislados que en su conjunto conforman un todo armónicamente tratado desde la confluencia artística. \n"
  "La técnica artística es el leit-motiv y el inmueble el protagónico. Em la muestra expositiva nada es mas importante que el propio edificio, es el contenedor de la historia discursada, es una relación de concatenación que implica acontecer socio-cultural de una ciudad en permanente ejercicio de modernidad, entendida como capacidad e información y renovación desde si misma. Desarrollaba en la región, era felizmente expresada en los cánones del equilibrio, ritmo simétrico y elegancia en la forma de la arquitectura y el trazado urbano.");
      case 1:
          return  Text("El 1ro de abril de 1820 el solar 126 de la calle Bouyón, esquina San Fernando es mercedado a Don Julián Girondon, quien fue el primer propietario solo un año después de la colonización de la Fernandina del Jagua, no obstante el lugar donde se encuentra actualmente el museo iba a ser utilizado para la construcción de una aduana, qué años más tarde se construiría frente al actual muelle real. Sin embargo al no construirse esta, el 25 de marzo de 1825 se construye la primera casa de embarrado y techo de guano, la cual perteneció a la señora Juana D Hernández.\n "
      "Años mas tarde en 1862 la casa es comprada por Doña Dominga Hidalgo Gato de Cabrera y se reconstruye la vivienda con mampostería y teja. \n"
  "El 28 de julio de 1874 adquiere la propiedad Don Guillermo Terry Ortega, quién tras su fallecimiento, en 1881 deja la casa en herencia a su viuda, Caridad Latte Dicouvier. \n"
  "El 31 de mayo de 1892 el hacendado Don José Lombard y Gómez compra la propiedad y construye una casa-almacén que fue la base de la construcción que hoy existe, mientras que 8 años mas tarde el maestro de obras Eusebio Valle certifica dicha construcción. \n"
  "El 24 de abril de 1915 Don Jose Ferrer Siés, natural de la región de Begur en Cataluña España, compra la casa a los descendientes de Jose Lombard, quien encarga a Pablo Donato Carbonel la reconstrucción de la casa, llevándola a un eclecticismo espectacular, siendo uno de los más significativos de la ciudad. \n"
  "En 1927 José Ferrer hipoteca la propiedad a The Chase National Bank of City New York S.A, siendo embargado el 11 de diciembre de 1928, para mas tarde ser vendida nuevamente al cienfueguero Isidoro Cacicedo y Torriente quien vivió en ella hasta finalizada la década del 1970, estableciendo en los bajos de la construcción La Droguería La Cosmopolita. \n"
  "En 1980 el edificio pasa a ser propiedad del estado cubano, en los bajos se establecen los Almacenes de Medicamentos del Ministerio de Salud Pública, mientras que la planta alta se convierte en Casa de la Cultura. \n"
  "Finalmente en 2015 se entrega el segundo nivel de la edificación al Centro Provincial de Patrimonio Cultural de Cienfuegos, para la creación de un proyecto de desarrollo local que permita la restauración del inmueble y su conversión a Museo de las Artes.");

      default:
            return Text(" Horario \n De martes a sábados de 10:00 AM – 6:00 PM \n Domingos 9:00 AM - 1:00 PM \n Precio – 5 CUP por persona \n Ubicación: Ave.54 esq.Calle 25, Cienfuegos. Cuba");
  }

  }

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
//        appBar: AppBar(
//            centerTitle: true,
//            title: Text("Información")),
        body:  CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Información"),
                centerTitle: true,
                background: Image.asset(
                  'assets/mapa.PNG',
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.8), colorBlendMode: BlendMode.modulate,
                ),
              ),
            ),
            // If the main content is a list, use SliverList instead.
            SliverFillRemaining(
              child:Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children:[
//                    ClipRRect(
//                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
//                        child: Image.asset('assets/mapa.png')),
                    SizedBox(height: 20,),
                    Container(
                        width: double.infinity,
                        child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: itemList.map((e) => buildOpciones(e))
                                .toList())),
                    SizedBox(height: 10,),
                    Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          child:  contentInformation(id,height*0.7,width),
                        )
                    ),
                    //contentInformation(id,height*0.7,width),
                  ]
              ),
            ),
          ],
        ),

//        Scrollbar(
//          child: Column(
//              mainAxisAlignment:MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              verticalDirection: VerticalDirection.down,
//              children:[
//                ClipRRect(
//                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
//                    child: Image.asset('assets/mapa.png')),
//                SizedBox(height: 20,),
//                Container(
//                    width: double.infinity,
//                    child: Wrap(
//                        alignment: WrapAlignment.spaceEvenly,
//                        children: itemList.map((e) => buildOpciones(e))
//                            .toList())),
//                SizedBox(height: 10,),
//                Expanded(
//                        child: SingleChildScrollView(
//                          scrollDirection: Axis.vertical,
//                          padding: EdgeInsets.only(left: 15,right: 15),
//                          child:  contentInformation(id,height*0.7,width),
//                        )
//                ),
//                //contentInformation(id,height*0.7,width),
////                SingleChildScrollView(
////                  scrollDirection: Axis.vertical,
////                  padding: EdgeInsets.only(left: 15,right: 15),
////                  child:  contentInformation(id,height*0.7,width),
////                ),
//
//              ]
//          ),
//
//        ),
    );
  }


  Widget buildOpciones(String opcion) {
    Size screenSize = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {
          setState(() {
            optionSelected = (optionSelected == opcion) ? '' : opcion;
            id=itemList.indexOf(opcion);
          });
        },
        child: Chip(
          shadowColor: Colors.blue.shade300,
          elevation: 5,
          label: SizedBox(
              width: screenSize.width * .2,
              child: Text(
                opcion,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: (optionSelected == opcion)
                        ? Colors.white
                        : Colors.grey.shade800),
              )),
          backgroundColor: (optionSelected == opcion)
              ? Colors.blue
              : Colors.transparent,
          shape: RoundedRectangleBorder(
              side: (optionSelected != opcion)
                  ? BorderSide(color: Colors.blue, width: 2)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(25)),
        ));
  }
}
