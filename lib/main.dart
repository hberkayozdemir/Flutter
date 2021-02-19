import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green, accentColor: Colors.black),
    home: new Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Dersleri",
          style: TextStyle(fontSize: 48.0, color: Colors.black),
        ),
      ),
      /* body:  Container (  color: Colors.cyan,
            child: Center( // centerda color param yok

              child: Text(
                "Flutter harika",
              ),
            ),
          )


        ,*/


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // icon ekleme
          debugPrint("Fab tıklandi.");
        },
        backgroundColor: Colors.green,
        // tek elemansa child coksa children
        child: Icon(
          Icons.access_alarm,
          size: 48.0,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    body: Container(
// eger belirlemezsek container tamamen kaplar ama bunu Text aling kardes yapar

      // height: 600.0,
      // width: 300.0,
      child: Text("Şeymammm",
      textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 44,

      ),
      ),
      color:Colors.green.shade100,
      alignment: Alignment.center,
    )
    ),
  ));
}
