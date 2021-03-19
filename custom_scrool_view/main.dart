import 'package:custom_scrool_view/ui/body.dart';
import 'package:flutter/material.dart';

main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lime,
          accentColor: Colors.yellow,
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: scaffoldd(),
    );
  }
}
