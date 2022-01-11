import 'package:flutter/material.dart';

class GaleriaPage extends StatefulWidget {
  const GaleriaPage({Key? key}) : super(key: key);

  @override
  _GaleriaPageState createState() => _GaleriaPageState();
}

class _GaleriaPageState extends State<GaleriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Galería de Imágenes")),
        body: Center(
            child: Column(children: <Widget>[
          SizedBox(height: 20.0),
          Container(
            margin: const EdgeInsets.all(50.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(20.0)),
            //padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/img4.jpg',
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(height: 20.0),
          Text('cnskacnkckscksckscks '
              'csjcshcscjcjsjc'
              'csbcsjcbjsc')
        ])));
  }
}
