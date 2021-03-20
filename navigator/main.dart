import 'package:custom_scrool_view/ui/navigasyon_islemleri.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(
          builder: (context) =>
              // hata sayfası

              D_sayfasi('D sayfası')),
      routes: {
        // burda kök dizini yazacağız
        '/': (context) => NavigasyonIslemleri(),
        // bu olmazsa üstteki bizi alıp d sayfasına atıcak onUnkowRoute sayesinde

        '/A': (context) => A_sayfasi(),
        '/GPage': (context) => G_sayfasi(),
        '/FPage': (context) => F_sayfasi(),
        '/EPage': (context) => E_sayfasi(),
        'EPage': (context) => E_sayfasi(),

        //liste sayfasını burda rotada acıyorum
        '/list': (context) => ListeSinifi(),
        // klasörleme islemleri

        // '/CPage/DPage': (context) => D_sayfasi("bos"),
        '/CPage/DPage/FPage': (context) => F_sayfasi(),

        // bu zincirli rotalarla cok rahat bir sekilde sayfalar arası gecisler yapabiliriz
      },
// bu methodlada dinamik map hazırlıcaz

      onGenerateRoute: (RouteSettings settings) {
        List<String> pathItems = settings.name.split("/");
        if (pathItems[1] == 'detay') {
          return MaterialPageRoute(
              builder: (context) => ListeDetay(int.parse(pathItems[2])));
        }

// urun/ detay/ id  icin route olusturma  örnek
        // if(pathItems[1]=='urun'){

        //   if(pathItems[2]=='detay'){

        //   }

        // }
      },

/*
Could not navigate to initial route.
The requested route name was: "/CPage/DPage"
There was no corresponding route in the app, and therefore the initial route specified will be ignored and "/" will be used instead.
eğer initial route routes ta tanımlı değilse initial routue null göürünür sistem bunun yerine '/' kök dizinimize gider

*/
      initialRoute: "/CPage/DPage",
      //* ilk sayfadan gidipte E page e gitmis gibi baslangıcı burdan yapıyor
      //! fakat routes ta bulunması gerek
      // ? ilk gösterilen rotadır sayfa değildir
      //? baslangıcını yatptıgında back tusu oluyore bu demekki stack 2 itemle doluyor
      // cunki biz kok dizinimi bu / ile baslattık rota slash içeriyorsa klasot dosyası gibi alır
      theme: ThemeData(
          primarySwatch: Colors.lime,
          accentColor: Colors.yellow,
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      // artık navigasyon islemelerini route ta tanımladıgım icin artık onu hep bu sekilde tanımlamam lazım
      // o yuzden Alt satırı degistiriyorum
      // home: NavigasyonIslemleri(),
      // home: ,

      // artık home tanımlamama gerek kalmıyor ben routes ta bir sayfayi '/' sekilde tanimlamissam
    );
  }
}
