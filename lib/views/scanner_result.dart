import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ScannerResult extends StatefulWidget {
  final String description;
  const ScannerResult(this.description);

  @override
  _ScannerResultState createState() => _ScannerResultState();
}

class _ScannerResultState extends State<ScannerResult> {

  String? result;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (mounted) {
      fetchQRData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: result != null
            ? Text(result!)
            : const Center(
          child: CircularProgressIndicator(),
        )
      ),
    );
  }



  //Funcion para llamar datos deL qr
  void fetchQRData() async {
    var url = Uri.https('my-json-server.typicode.com',widget.description);
    await http.get(url).then((value) {
      print(value.statusCode);
      if (value.statusCode == 200) {
        var decodedJsonData = jsonDecode(value.body);
        result = decodedJsonData['description'];
        setState(() {});
      } else {
        print('Request failed with status: ${value.statusCode}.');
      }
    });
  }
}
