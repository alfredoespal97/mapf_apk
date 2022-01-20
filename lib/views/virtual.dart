import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panorama/panorama.dart';
import 'dart:io';
import 'package:flutter/material.dart';

import 'package:mapf/views/home.dart';
import 'package:mapf/views/mapa.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class VirtualPage extends StatefulWidget {
  const VirtualPage({Key? key}) : super(key: key);

  @override
  _VirtualPageState createState() => _VirtualPageState();
}

class _VirtualPageState extends State<VirtualPage> {

  List<Image> panoImages = [
    Image.asset('assets/panoramicas/pano1.jpg'),
    Image.asset('assets/panoramicas/pano2.jpg'),
    Image.asset('assets/panoramicas/pano3.jpg'),
    Image.asset('assets/panoramicas/pano4.jpg'),
    Image.asset('assets/panoramicas/pano5.jpg'),
    Image.asset('assets/panoramicas/pano6.jpg'),
    Image.asset('assets/panoramicas/pano7.jpg'),
    Image.asset('assets/panoramicas/pano8.jpg'),
    Image.asset('assets/panoramicas/pano9.jpg'),
    Image.asset('assets/panoramicas/pano10.jpg'),
    Image.asset('assets/panoramicas/pano11.jpg'),
    Image.asset('assets/panoramicas/pano12.jpg'),
    Image.asset('assets/panoramicas/pano13.jpg'),
    Image.asset('assets/panoramicas/pano14.jpg'),
    Image.asset('assets/panoramicas/pano15.jpg'),
    Image.asset('assets/panoramicas/pano16.jpg'),
    Image.asset('assets/panoramicas/pano17.jpg'),
    Image.asset('assets/panoramicas/pano18.jpg'),
    Image.asset('assets/panoramicas/pano19.jpg'),
    Image.asset('assets/panoramicas/pano20.jpg'),
    Image.asset('assets/panoramicas/pano21.jpg'),
  ];

  int _panoId = 0;
  double _lon = 0;
  double _lat = 0;
  double _tilt = 0;

  Widget hotspotButton({String? text, IconData? icon, VoidCallback? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(icon),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(color: Colors.black38, borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
        )
            : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget panorama;
    switch (_panoId % panoImages.length) {
      case 0:
        panorama = Panorama(
          animSpeed: 1.0,
          //onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano1.jpg'),
          hotspots: [
            Hotspot(
              latitude: 6.0,
              longitude: -75.0,
              width: 90,
              height: 75,
              widget: hotspotButton(text: "Etnografía", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=1)),
            ),
            Hotspot(
              latitude:0.9,
              longitude: 88.0,
              width: 120.0,
              height: 75.0,
              widget: hotspotButton(text: "Exteriores",icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId = 8)),
            ),
            Hotspot(
              latitude: 2.6,
              longitude: 22.0,
              width: 60.0,
              height: 60.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId = 5)),
            ),
          ],
        );
        break;
      case 1:
        panorama = Panorama(
          animSpeed: 1.0,
         // onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano2.jpg'),
          hotspots: [
            Hotspot(
              latitude: 7.5,
              longitude: -30.0,
              width: 120.0,
              height: 75.0,
              widget: hotspotButton(text: "Salón Principal", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=2)),
            ),
            Hotspot(
              latitude: 2.6,
              longitude: 176,
              width: 120.0,
              height: 75.0,
              widget: hotspotButton(text: "Recibidor", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=0)),
            ),
          ],
        );
        break;
      case 2:
        panorama = Panorama(
          animSpeed: 1.0,
         // onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano3.jpg'),
          hotspots: [
            Hotspot(
              latitude: 7.7,
              longitude: -52,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=3)),
            ),
            Hotspot(
              latitude: -7.5,
              longitude: 143.0,
              width: 120.0,
              height: 75.0,
              widget: hotspotButton(text: "Etnografía", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=1)),
            ),
          ],
        );
        break;
      case 3:
        panorama = Panorama(
          animSpeed: 1.0,
         // onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano4.jpg'),
          hotspots: [
            Hotspot(
              latitude: 7.3,
              longitude: -16.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton( icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=4)),
            ),
          ],
        );
        break;
      case 4:
        panorama = Panorama(
          animSpeed: 1.0,
         // onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano5.jpg'),
          hotspots: [
            Hotspot(
              latitude: 18.0,
              longitude: -66.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Etnografía", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=1)),
            ),
          ],
        );
        break;
      case 5:
        panorama = Panorama(
          animSpeed: 1.0,
        //  onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano6.jpg'),
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude: -46.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton( icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=0)),
            ),
            Hotspot(
              latitude: -2.5,
              longitude: 11.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Exteriores", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=8)),
            ),
            Hotspot(
              latitude: -3.0,
              longitude: 88.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Corredor", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=6)),
            ),
            Hotspot(
              latitude: -3.0,
              longitude: 100.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Escaleras", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=12)),
            ),
          ],
        );
        break;
      case 6:
        panorama = Panorama(
          animSpeed: 1.0,
         // onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano7.jpg'),
          hotspots: [
            Hotspot(
              latitude: 28.0,
              longitude: -48.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Recibidor", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=5)),
            ),
          ],
        );
        break;
      case 7:
        panorama = Panorama(
          animSpeed: 1.0,
         // onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano8.jpg'),
          hotspots: [
            Hotspot(
              latitude: 1.0,
              longitude: 154.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Corredor", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=6)),
            ),
            Hotspot(
              latitude: -9.0,
              longitude: -143.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=10)),
            ),
            Hotspot(
              latitude:0.0,
              longitude: -32.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=9)),
            ),
          ],
        );
        break;
      case 8:
        panorama = Panorama(
          animSpeed: 1.0,
       //   onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano9.jpg'),
          hotspots: [
            Hotspot(
              latitude: 20.0,
              longitude: -60.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=11)),
            ),
            Hotspot(
              latitude: 20.0,
              longitude: -19.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Polivalente", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=10)),
            ),
            Hotspot(
              latitude: -30.0,
              longitude: -19.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=0)),
            ),
            Hotspot(
              latitude: 20.0,
              longitude: 19.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=7)),
            ),
          ],
        );
        break;
      case 9:
        panorama = Panorama(
          animSpeed: 1.0,
        //  onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano10.jpg'),
          hotspots: [
            Hotspot(
              latitude: 20.0,
              longitude: -46.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Exteriores", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=8)),
            ),
            Hotspot(
              latitude: -1.0,
              longitude: -80.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Corredor", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=6)),
            ),
            Hotspot(
              latitude: 6.0,
              longitude: 55.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=11)),
            ),
          ],
        );
        break;
      case 10:
        panorama = Panorama(
          animSpeed: 1.0,
        //  onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano11.jpg'),
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude: -46.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=8)),
            ),
            Hotspot(
              latitude: 1.0,
              longitude: 25.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton( icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=7)),
            ),
            Hotspot(
              latitude: 18.0,
              longitude: -138.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton( icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=11)),
            ),
            Hotspot(
              latitude: 18.0,
              longitude: 132.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Corredor", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=6)),
            ),
          ],
        );
        break;
      case 11:
        panorama = Panorama(
          animSpeed: 1.0,
          //onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano12.jpg'),
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude: 53.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=10)),
            ),
            Hotspot(
              latitude: 0.0,
              longitude: -46.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás",icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=8)),
            ),
          ],
        );
        break;
      case 12:
        panorama = Panorama(
          animSpeed: 1.0,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano13.jpg'),
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude: -46.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Arriba", icon: Icons.arrow_upward, onPressed: () => setState(() => _panoId=13)),
            ),
            Hotspot(
              latitude: -15.0,
              longitude: -46.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás", icon: Icons.arrow_downward, onPressed: () => setState(() => _panoId=5)),
            ),
          ],
        );
        break;
      case 13:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano14.jpg'),
          hotspots: [
            Hotspot(
              latitude: 20.0,
              longitude: -68.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=14)),
            ),
            Hotspot(
              latitude: 16.0,
              longitude:148.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Pergola", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=16)),
            ),
            Hotspot(
              latitude: 8.0,
              longitude: -146.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás", icon: Icons.arrow_downward, onPressed: () => setState(() => _panoId=12)),
            ),
          ],
        );
        break;
      case 14:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano15.jpg'),
          hotspots: [
            Hotspot(
              latitude: -18.0,
              longitude: 27.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton( icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=15)),
            ),
            Hotspot(
              latitude: -23.0,
              longitude: -107.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Mirador", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=18)),
            ),
            Hotspot(
              latitude: -35.0,
              longitude: 102.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Entrada", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=13)),
            ),
            Hotspot(
              latitude: -23.0,
              longitude: 85.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Pergola", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=16)),
            ),
          ],
        );
        break;
      case 15:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano16.jpg'),
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude:18.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Mirador", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=18)),
            ),
            Hotspot(
              latitude: 0.0,
              longitude: -60.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Entrada", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=13)),
            ),
            Hotspot(
              latitude: 5.0,
              longitude: -100.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Pergola", icon: Icons.open_in_browser, onPressed: () => setState(() => _panoId=16)),
            ),
          ],
        );
        break;
      case 16:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano17.jpg'),
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude: -46.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Arriba", icon: Icons.arrow_upward, onPressed: () => setState(() => _panoId=17)),
            ),
            Hotspot(
              latitude: -20.0,
              longitude: -48.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás", icon: Icons.arrow_downward, onPressed: () => setState(() => _panoId=13)),
            ),
          ],
        );
        break;
      case 17:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano18.jpg'),
          hotspots: [
            Hotspot(
              latitude: -2.0,
              longitude: -92.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás", icon: Icons.arrow_downward, onPressed: () => setState(() => _panoId=16)),
            ),
          ],
        );
        break;
      case 18:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano19.jpg'),
          hotspots: [
            Hotspot(
              latitude: -8.0,
              longitude: 100.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Arriba", icon: Icons.arrow_upward, onPressed: () => setState(() => _panoId=19)),
            ),
            Hotspot(
              latitude: 10.0,
              longitude: 40.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=15)),
            ),
            Hotspot(
              latitude: 20.0,
              longitude: 80.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(icon: Icons.remove_red_eye, onPressed: () => setState(() => _panoId=14)),
            ),
          ],
        );
        break;
      case 19:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano20.jpg'),
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude: 145.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Arriba", icon: Icons.arrow_upward, onPressed: () => setState(() => _panoId=20)),
            ),
            Hotspot(
              latitude: -15.0,
              longitude: 145.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Abajo", icon: Icons.arrow_downward, onPressed: () => setState(() => _panoId=18)),
            ),
          ],
        );
        break;
      case 20:
        panorama = Panorama(
          animSpeed: 1.0,
          onViewChanged: onViewChanged,
          sensorControl: SensorControl.Orientation,
          child: Image.asset('assets/panoramicas/pano21.jpg'),
          hotspots: [
            Hotspot(
              latitude: -33.0,
              longitude: 33.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Atrás", icon: Icons.arrow_downward, onPressed: () => setState(() => _panoId=19)),
            ),
          ],
        );
        break;
      default:
        panorama = Panorama(
          animSpeed: 1.0,
          sensorControl: SensorControl.Orientation,
          child: panoImages[_panoId % panoImages.length],
          hotspots: [
            Hotspot(
              latitude: 0.0,
              longitude: 160.0,
              width: 90.0,
              height: 75.0,
              widget: hotspotButton(text: "Next scene", icon: Icons.double_arrow, onPressed: () => setState(() => _panoId++)),
            ),
          ],
        );
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recorrido Virtual"),
      ),
      body: Stack(
        children: [
          panorama,
         // Text('${_lon.toStringAsFixed(3)}, ${_lat.toStringAsFixed(3)}, ${_tilt.toStringAsFixed(3)}'),
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//          child: Icon(Icons.arrow_back),
//          onPressed: (){
//            Navigator.pop(context);
//      }),
    );
  }

  void onViewChanged(longitude, latitude, tilt) {
    setState(() {
      _lon = longitude;
      _lat = latitude;
      _tilt = tilt;
    });
  }
}