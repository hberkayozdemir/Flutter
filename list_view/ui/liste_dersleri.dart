import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  @override
  //2. list view kullanımı icin acıldı sınırlarımızı belirliyelim

  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listAltBaslik =
      List.generate(300, (index) => "Liste eleamnı alt başlık : $index");

  Widget build(BuildContext context) {
// simdi işimize yarıcak peformansı iyi efficient list view nasıl yazılır goruceğiz







// // 2. secenek map ile liste elemanlarımızı iterable bir objecte donusuturur 2 listemizi
    return ListView(
      children: listeNumaralari.map((currentIndex) =>

          Container(
            child: Card(
              color: Colors.amberAccent,
              margin: EdgeInsets.all(20),
              elevation: 20,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.label_important_outline_sharp),
                  radius: 32,
                ),
                title: Text("$currentIndex . Kişi"),
                subtitle: Text("$currentIndex .ci Mesaj"),
                trailing: Icon(Icons.verified_user),
                onLongPress: () {
                  debugPrint("Ben aldatılmam $currentIndex");
                },
              ),
            ),
          ),




      ).toList(),
    );
    // widget yerine column gelecek

    // scrool view tarzı liste açanın ilk seceneği bu fakat biz bunu performans dusuklugu acısından tavsiye etmiyoruz
    // eğer bizim verilemimizin sayısı liste elamnlarımızın sayısı biliniyor ise biz bu methodu kullanmayı tavsiye ederiz
    // ama diğer türlüsü için baska secenekler arayın
//     return ListView(
//       children: [
//
//
//           Container(
//             child: Card(
//               color: Colors.amberAccent,
//               margin: EdgeInsets.all(20),
//               elevation: 20,
//               child: ListTile(
//                 leading: CircleAvatar(
//                   child: Icon(Icons.android),
//                   radius: 32,
//                 ),
//                 title: Text("Umut Koşar"),
//                 subtitle: Text("Onaylı ibne"),
//                 trailing: Icon(Icons.verified_user),
//                 onLongPress: () {
//                   debugPrint("Ben aldatıldım");
//                 },
//               ),
//             ),
//           ),
//           Divider(
//             color: Colors.teal,
//             height: 30,
//             indent: 20,
//             endIndent: 20,
//           ),
//
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//         Container(
//           child: Card(
//             color: Colors.amberAccent,
//             margin: EdgeInsets.all(20),
//             elevation: 20,
//             child: ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.android),
//                 radius: 32,
//               ),
//               title: Text("Umut Koşar"),
//               subtitle: Text("Onaylı ibne"),
//               trailing: Icon(Icons.verified_user),
//               onLongPress: () {
//                 debugPrint("Ben aldatıldım");
//               },
//             ),
//           ),
//         ),
//         Divider(
//           color: Colors.teal,
//           height: 30,
//           indent: 20,
//           endIndent: 20,
//         ),
//             Container(
//               child: Card(
//                 color: Colors.amberAccent,
//                 margin: EdgeInsets.all(20),
//                 elevation: 20,
//                 child: ListTile(
//                   leading: CircleAvatar(
//                     child: Icon(Icons.android),
//                     radius: 32,
//                   ),
//                   title: Text("Umut Koşar"),
//                   subtitle: Text("Onaylı ibne"),
//                   trailing: Icon(Icons.verified_user),
//                   onLongPress: () {
//                     debugPrint("Ben aldatıldım");
//                   },
//                 ),
//               ),
//             ),
//             Divider(
//               color: Colors.teal,
//               height: 30,
//               indent: 20,
//               endIndent: 20,
//             ),
//
//           ],
//
//
//     )
// ;

    // Container(
    //
    //   child:      Card(
    //
    //     color: Colors.amberAccent,
    //     margin : EdgeInsets.all(20),
    //     elevation: 20,
    //     child: ListTile(
    //       leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //       title: Text("Umut Koşar"),
    //       subtitle: Text("Onaylı ibne"),
    //       trailing: Icon(Icons.verified_user),
    //       onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //     ),
    //   ),
    // ),
    //
    //

    // Container(
    //
    //   child:      Card(
    //
    //     color: Colors.amberAccent,
    //     margin : EdgeInsets.all(20),
    //     elevation: 20,
    //     child: ListTile(
    //       leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //       title: Text("Umut Koşar"),
    //       subtitle: Text("Onaylı ibne"),
    //       trailing: Icon(Icons.verified_user),
    //       onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //     ),
    //   ),
    // ),
    // Container(
    //
    //   child:      Card(
    //
    //     color: Colors.amberAccent,
    //     margin : EdgeInsets.all(20),
    //     elevation: 20,
    //     child: ListTile(
    //       leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //       title: Text("Umut Koşar"),
    //       subtitle: Text("Onaylı ibne"),
    //       trailing: Icon(Icons.verified_user),
    //       onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //     ),
    //   ),
    // ),
    // Container(
    //
    //   child:      Card(
    //
    //     color: Colors.amberAccent,
    //     margin : EdgeInsets.all(20),
    //     elevation: 20,
    //     child: ListTile(
    //       leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //       title: Text("Umut Koşar"),
    //       subtitle: Text("Onaylı ibne"),
    //       trailing: Icon(Icons.verified_user),
    //       onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //     ),
    //   ),
    // ),
    // Container(
    //
    //   child:      Card(
    //
    //     color: Colors.amberAccent,
    //     margin : EdgeInsets.all(20),
    //     elevation: 20,
    //     child: ListTile(
    //       leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //       title: Text("Umut Koşar"),
    //       subtitle: Text("Onaylı ibne"),
    //       trailing: Icon(Icons.verified_user),
    //       onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //     ),
    //   ),
    // ),
    // Container(
    //
    //   child:      Card(
    //
    //     color: Colors.amberAccent,
    //     margin : EdgeInsets.all(20),
    //     elevation: 20,
    //     child: ListTile(
    //       leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //       title: Text("Umut Koşar"),
    //       subtitle: Text("Onaylı ibne"),
    //       trailing: Icon(Icons.verified_user),
    //       onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //     ),
    //   ),
    // ),
    // Container(
    //
    //   child:      Card(
    //
    //     color: Colors.amberAccent,
    //     margin : EdgeInsets.all(20),
    //     elevation: 20,
    //     child: ListTile(
    //       leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //       title: Text("Umut Koşar"),
    //       subtitle: Text("Onaylı ibne"),
    //       trailing: Icon(Icons.verified_user),
    //       onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //     ),
    //   ),
    // ),
    //
    // Divider(color: Colors.orange,height: 32,indent: 20,endIndent: 20,)

// boyle birden cok  liste elemanı olunc sıgmayıp sarı siyah erroumuzu veriyon en sonda o yüzden androidteki scroll view ozellğini
    //gorecegiz

    // Card(
    //
    //   color: Colors.teal.shade400,
    //   margin : EdgeInsets.all(20),
    //   elevation: 20,
    //   child: ListTile(
    //     leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //     title: Text("Cem Özden"),
    //     subtitle: Text("İbne değildir sert gotten pompalar"),
    //     trailing: Icon(Icons.verified_user),
    //     onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //   ),
    // ),
    //
    // Card(
    //
    //   color: Colors.deepOrangeAccent,
    //   margin : EdgeInsets.all(20),
    //   elevation: 20,
    //   child: ListTile(
    //     leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //     title: Text("Deniz Ata Eş"),
    //     subtitle: Text("Liste elemanının alt başlığı"),
    //     trailing: Icon(Icons.verified_user),
    //     onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //   ),
    // ),
    //
    //
    // Card(
    //
    //   color: Colors.green.shade400,
    //   margin : EdgeInsets.all(20),
    //   elevation: 20,
    //   child: ListTile(
    //     leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //     title: Text("Semih Atlılar"),
    //     subtitle: Text("Liste elemanının alt başlığı"),
    //     trailing: Icon(Icons.verified_user),
    //     onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //   ),
    // ),
    //
    //
    // Card(
    //
    //   color: Colors.red.shade400,
    //   margin : EdgeInsets.all(20),
    //   elevation: 20,
    //   child: ListTile(
    //     leading: CircleAvatar(child : Icon(Icons.android),radius: 32,),
    //     title: Text("Bekir Çalış"),
    //     subtitle: Text("Kendine sakso çeken kedi"),
    //     trailing: Icon(Icons.verified_user),
    //     onLongPress: (){ debugPrint("Ben aldatıldım") ; },
    //
    //   ),
    // ),
  }
}
