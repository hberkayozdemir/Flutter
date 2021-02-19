import 'package:flutter/material.dart';

void seymam() {
  return debugPrint("Şeymam");
}

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter World",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            try {
              seymam();
            } catch (e) {
              debugPrint(
                  "Basamadım yavrum basamdım ne yaptımsa sana yaranamadım" +
                      e.toString());
            } finally {
              debugPrint("bastık");
            }
          },
          child: new Icon(Icons.home, color: Colors.white),
        ),
        body: Container(
          color: Colors.orange[200],

// 1. deneme

          // child: Text("hilmi"), // ekranda kucuk yazı -1 -1 de
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Icon(
              Icons.add_a_photo,
              size: 64,
              color: Colors.green,
            ),
            Icon(
              Icons.add_a_photo,
              size: 64,
            ),
            Icon(
              Icons.add_a_photo,
              size: 64,
              color: Colors.green,
            ),
            Icon(Icons.add_a_photo, size: 64),
            Icon(
              Icons.add_a_photo,
              size: 64,
              color: Colors.green,
            ),
            Icon(
              Icons.add_a_photo,
              size: 64,
            ),
            Icon(
              Icons.add_a_photo,
              size: 64,
            ),
            Icon(
              Icons.add_a_photo,
              size: 64,
              color: Colors.green,
            ),
            // Icon(
            //   Icons.add_a_photo,
            //   size: 64,
            // ),
            // Icon(
            //   Icons.add_a_photo,
            //   size: 64,
            //   color: Colors.green,
            // ),
            // Icon(
            //   Icons.add_a_photo,
            //   size: 64,
            // ),
            // Icon(
            //   Icons.add_a_photo,
            //   size: 64,
            //   color: Colors.green,
            // ),

            Expanded(
              child: Icon(
                Icons.add_a_photo,
                size: 64,
                color: Colors.green,
              ),
            ),

            Expanded(
              child: Icon(
                Icons.add_a_photo,
                size: 64,
                color: Colors.green,
              ),
            ),

            Expanded(
              child: Icon(
                Icons.add_a_photo,
                size: 64,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.add_a_photo,
                size: 64,
                color: Colors.green,
              ),
            )

            // row da veya columnda tasma oldugu zaman ekranın tasan yerine bir adet sarı siyah sembol geliyor
            // o yuzden yoruma aldım fakat eğer expanded kullanırsak iconları yaparken
          ]),
        ),
      )));
}
