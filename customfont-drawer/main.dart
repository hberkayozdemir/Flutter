import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'Genel',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Hbo"),
              accountEmail: Text("hbosoftware@gmail.com"),
              currentAccountPicture: Image.network(
                "https://pbs.twimg.com/profile_images/1379868915304697864/6pfEHznp_400x400.jpg",
                width: 75,
                height: 75,
              ),
              otherAccountsPictures: [
                RaisedButton(
                  color: Colors.amber,
                  onPressed: () {},
                  child: CircleAvatar(
                    child: Text("A"),
                  ),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {},
                  color: Colors.lime,
                  child: CircleAvatar(
                    child: Text(
                      "B",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.search),
                    title: Text("Search"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  InkWell(
                    splashColor: Colors.lime,
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text("Call"),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  AboutListTile(
                    applicationName: "Flutter Dersleri",
                    applicationIcon: Icon(Icons.save),
                    applicationVersion: "1.1",
                    child: Text("About us"),
                    applicationLegalese: null,
                    icon: Icon(Icons.keyboard),
                    aboutBoxChildren: [
                      Text("Hilmi Berkay Özdemir"),
                      Text("Sarp Erdoğan"),
                      Text("Anil Aydın")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter dersleri bölüm 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kisisel Font Kullanimi",
              style: TextStyle(fontSize: 36, fontFamily: 'x'),
            ),
            Text(
              "Kisisel Font Kullanimi",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            Text(
              "Kisisel Font Kullanimi",
              style: TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
