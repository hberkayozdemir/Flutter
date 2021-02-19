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
          child: Row(mainAxisSize: MainAxisSize.min,
              // letsgo
              // mainAxisAlignment: MainAxisAlignment.center,
              // her seyi ortala
              // icindekileri git en sona it
              // mainAxisAlignment: MainAxisAlignment.end,
              // icindekileri git en basa it
              // mainAxisAlignment: MainAxisAlignment.start,
              // aralarında eşit bosluk bırak ama bas ve son dahil
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // aralarını esit böler cocukların ve start ve end arasında 0 padding kalcak sekilde
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // basa ve sona x aralarına 2 x bosluk bırakıyor
              // mainAxisAlignment: MainAxisAlignment.spaceAround,


              // cross axis
              // mainAxisAlignment: MainAxisAlignment.center,
//          child: Row(mainAxisSize: MainAxisSize.max, sadece max ien calisiyor
// fakat eğer crossAxis alignment kullanırsak

// crossAxisAlignment: CrossAxisAlignment.center,
// yine bir şey değişmedi ama simdi bunu calıstırmak icin(min oldugu icin calismadi)

// crossAxisAlignment: CrossAxisAlignment.stretch,
              // ters istikamette yani rowsa column alanına columnsa row alanına yayar


// weight kavramı

              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
  //               Expanded(child: Container(
  //                   child:
  //                   Icon(
  //                     Icons.add_a_photo,
  //                     size: 64,
  //                     color: Colors.green,
  //                   ),
  // color: Colors.red.shade50,
  //
  //               )),
  //               Expanded(child: Container(
  //                 child:
  //                 Icon(
  //                   Icons.add_a_photo,
  //                   size: 64,
  //                   color: Colors.green,
  //                 ),
  //                 color: Colors.red.shade50,
  //
  //               )),
  //               Expanded(child: Container(
  //                 child:
  //                 Icon(
  //                   Icons.add_a_photo,
  //                   size: 64,
  //                   color: Colors.green,
  //                 ),
  //                 color: Colors.red.shade50,
  //
  //               )),
  //               Expanded(child: Container(
  //                 child:
  //                 Icon(
  //                   Icons.add_a_photo,
  //                   size: 64,
  //                   color: Colors.green,
  //                 ),
  //                 color: Colors.red.shade50,
  //
  //               )),
                // su an hepsi aynı renkte expanded containerlar ama renkleri değiştirsek ne olacak

                // ekrana ne kdar gelirse gelsin her türlü sığdırıyor bu Expanded Containerlar
                // simdi ise onların icine

                Expanded(child: Container(
                  child:
                  Icon(
                    Icons.add_a_photo,
                    size: 64,
                    color: Colors.green,
                  ),
                  color: Colors.red.shade200,

                ),
flex: 2,
                ),
                Expanded(child: Container(
                  child:
                  Icon(
                    Icons.add_a_photo,
                    size: 64,
                    color: Colors.green,
                  ),
                  color: Colors.blue.shade200,

                ),
                  flex: 6,),
                Expanded(child: Container(
                  child:
                  Icon(
                    Icons.add_a_photo,
                    size: 64,
                    color: Colors.green,
                  ),
                  color: Colors.purple.shade200,

                ),
                  flex: 3,),

              ]),
        ),
      )));
}
