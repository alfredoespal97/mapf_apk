import 'package:flutter/material.dart';

Widget wallpaperLst({List<String>? fotos, context}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: fotos!.map((foto){
        return GridTile(
            child: Container(
              child:Image.asset(foto.toString())
            )
        );
      }).toList(),
    ),
  );
}