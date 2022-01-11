import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          pinned: true,
          snap: false,
          floating: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Información", style: TextStyle(color: Colors.black)),
            background: Image.asset(
              'assets/mapa.PNG',
              fit: BoxFit.fill,
            ),
          ))
    ]));
  }
}
