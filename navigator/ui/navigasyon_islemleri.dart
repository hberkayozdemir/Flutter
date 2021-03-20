import 'package:flutter/material.dart';
import 'package:custom_scrool_view/main.dart';

class NavigasyonIslemleri extends StatelessWidget {
  @override
  String baslik = "B sayfasi";
  String baslik1 = "C sayfasi";
  String baslik2 = "D sayfasi";

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Navigasyon İşlemleri",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => A_sayfasi(),
                    ),
                  );
                },
                child: Text("A sayfasına git"),
                color: Colors.blue,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => B_sayfasi(baslik),
                    ),
                  );
                },
                child: Text("B sayfasına git ve veri gönder constructorla "),
                color: Colors.red,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => C_sayfasi(baslik1),
                    ),
                  );
                },
                child: Text("C sayfasına git "),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => D_sayfasi(baslik2)),
                  ).then((popReturnValue) {
                    debugPrint("Pop işlem,inden gelen değer $popReturnValue");
                  });
                },

                //! simdi kullanıcı hiyarı gidipte telefondan back yapıp butrona basmazsa ürünü almak istemezse
                // ! bana değer olarak null değer donecek ben bunu if null sa diye yapardım ama flutter bunun icin
                //! yine bir çözüme sahip
                //* WillPopScope
                //* bunu kullanarak önüne geçeceğim simdi buraları yoruma alıyorum  0 dan  yazsıca aynı Scaffol gibi bir
                //* widget türü yapmislar bu wps yi
                // Navigator.pop(context,true);
                //! buradaki true veya false geleceğe dair bir karar durumu FUTURE
                //* kullanıcı ürünü ekledi mesela bu bir true değer
                //* kullanıcı ürünü ekleyemedi veyahuttta vazgeçti bu da false bir değer
                child: Text("D sayfasına git gelirken boş gelme "),
                color: Colors.yellow,
              ),
              RaisedButton(
                onPressed: () {
                  // bu sekilde push replacement kullandıgımızda stackteki tüm elemanları sildiği icin
                  // push edilcek bir eleman kalmaz geri butonu boş oldugu icin gozukmuyor ve geri donemiyoruz

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => E_sayfasi()));
                },
                child: Text("E sayfasına git geri gelme"),
                color: Colors.blue,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/list");
                },
                child: Text("Liste Sayfasına git"),
                color: Colors.pink,
              ),
            ],
          ),
        ));
  }
}

//      Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "$gelenBaslikVerisi",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "$gelenBaslikVerisi",
//                 style: TextStyle(color: Colors.red, fontSize: 56),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   ! simdi kullanıcı hiyarı gidipte telefondan back yapıp butrona basmazsa ürünü almak istemezse
//                   ! bana değer olarak null değer donecek ben bunu if null sa diye yapardım ama flutter bunun icin
//                   ! yine bir çözüme sahip
//                   * WillPopScope
//                   * bunu kullanarak önüne geçeceğim simdi buraları yoruma alıyorum  0 dan  yazsıca aynı Scaffol gibi bir
//                   * widget türü yapmislar bu wps yi
//                   Navigator.pop(context,true);
//                   ! buradaki true veya false geleceğe dair bir karar durumu FUTURE
//                   * kullanıcı ürünü ekledi mesela bu bir true değer
//                   * kullanıcı ürünü ekleyemedi veyahuttta vazgeçti bu da false bir değer
//                 },
//                 color: Colors.pink,
//                 child: Text(
//                   "Back",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   // }
// }

class ListeSinifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/detay/$index");
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Liste elemanı $index"),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  @override
  int tiklanilanindex = 0;

  ListeDetay(this.tiklanilanindex);

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste  Detay Sayfası $tiklanilanindex",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Liste elemanı $tiklanilanindex tıklandı "),
        ),
      ),
    );
    ;
  }
}

class E_sayfasi extends StatelessWidget {
  @override

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "E Sayfasi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " E sayfasi",
                style: TextStyle(color: Colors.red, fontSize: 56),
              ),
              RaisedButton(
                  child: Text("F sayfasına git"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => F_sayfasi(),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}

class F_sayfasi extends StatelessWidget {
  @override

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "F Sayfasi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "F sayfasi",
                style: TextStyle(color: Colors.red, fontSize: 56),
              ),
              RaisedButton(
                  child: Text("G sayfasına git"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/GPage");
                  })
            ],
          ),
        ));
  }
}

class G_sayfasi extends StatelessWidget {
  @override

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "G Sayfasi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "G sayfasi",
                style: TextStyle(color: Colors.red, fontSize: 56),
              )
            ],
          ),
        ));
  }
}

class A_sayfasi extends StatelessWidget {
  @override

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "A Sayfasi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "A sayfasi",
                style: TextStyle(color: Colors.red, fontSize: 56),
              )
            ],
          ),
        ));
  }
}

class B_sayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  B_sayfasi(String baslik) {
    this.gelenBaslikVerisi = baslik;
  }
  @override

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "$gelenBaslikVerisi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$gelenBaslikVerisi",
                style: TextStyle(color: Colors.red, fontSize: 56),
              )
            ],
          ),
        ));
  }
}

class C_sayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  C_sayfasi(String baslik) {
    this.gelenBaslikVerisi = baslik;
  }
  @override

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "$gelenBaslikVerisi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$gelenBaslikVerisi",
                style: TextStyle(color: Colors.red, fontSize: 56),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.deepPurple,
                child: Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => A_sayfasi()));
                },
                color: Colors.deepPurple,
                child: Text(
                  "A sayfasina dön",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}

class D_sayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  D_sayfasi(String baslik) {
    this.gelenBaslikVerisi = baslik;
  }
  @override

  // *navgiator islemleri ve sayfalar arası gecis yapıcaksak her
  //* sayfamızın
  // *bası scaffold ile baslamalı

  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "$gelenBaslikVerisi",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$gelenBaslikVerisi",
                    style: TextStyle(color: Colors.red, fontSize: 56),
                  ),
                  RaisedButton(
                    onPressed: () {
                      // ! simdi kullanıcı hiyarı gidipte telefondan back yapıp butrona basmazsa ürünü almak istemezse
                      // ! bana değer olarak null değer donecek ben bunu if null sa diye yapardım ama flutter bunun icin
                      // ! yine bir çözüme sahip
                      // * WillPopScope
                      // * bunu kullanarak önüne geçeceğim simdi buraları yoruma alıyorum  0 dan  yazsıca aynı Scaffol gibi bir
                      // * widget türü yapmislar bu wps yi
                      Navigator.pop(context, false);
                      // ! buradaki true veya false geleceğe dair bir karar durumu FUTURE
                      // * kullanıcı ürünü ekledi mesela bu bir true değer
                      // * kullanıcı ürünü ekleyemedi veyahuttta vazgeçti bu da false bir değer
                    },
                    color: Colors.pink,
                    child: Text(
                      "Back",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )),
        onWillPop: () {
          debugPrint("On will pop calisti");
          Navigator.pop(context, true);
          return Future.value(true);
        });
  }
}
