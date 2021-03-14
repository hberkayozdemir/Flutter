import 'package:flutter/material.dart';
import 'package:lists/ui/etkin_liste_ornek.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter List dersi allocated memory",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Lists Allocated memory",
            style: TextStyle(color: Colors.white),
          ),
        ),


        body: EtkinListeOrnek (),
      ),
    ),
  );
}

// import 'package:flutter/material.dart';
// import 'package:lists/ui/liste_dersleri.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//
//       debugShowCheckedModeBanner: false,
//       title: "Flutter Desleri",
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Bahis Chat", style: TextStyle(
//             fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white,),),
//         ),
//         body: ListeKonuAnlatimi(),
//         floatingActionButton: FloatingActionButton(onPressed: () {
//           debugPrint("Mesaj yaz");
//         }, child: Icon(Icons.message),)
//       ),
//     ),
//   );
// }
