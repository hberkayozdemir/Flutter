import 'package:flutter/material.dart';
import 'package:input_events/ui/form_islemleri.dart';
import 'package:input_events/ui/form_textfromfield.dart';
import 'package:input_events/ui/navigasyon_islemleri.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime, brightness: Brightness.dark),
      routes: {
        "/": (context) => NavigasyonIslemleri(),
        "/inputEvents": (context) => FormIslemleri(),
        "/form": (context) => FormveTextFormField()
      },
      initialRoute: "/form",
      onGenerateRoute: (RouteSettings settings) {},
    );
  }
}
