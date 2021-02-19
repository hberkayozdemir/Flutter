import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter derslerim",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Text(
              "Placeholder ve flutterlogo widgetları",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterLogo(
                          textColor: Colors.orange,
                          size: 60,
                        ),
                        Text("Flutter Logom"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Placeholder(
                            // var sayılanı h400 e w400 her zaman
                            color: Colors.blue,
                            strokeWidth: 2.0,
                          ),
                        ),
                        Text("Flutter Logom"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterLogo(
                          textColor: Colors.orange,
                          size: 60,
                        ),
                        Text("Flutter Logom"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterLogo(
                          textColor: Colors.green,
                          size: 60,
                          style: FlutterLogoStyle.horizontal,
                        ),
                        Text("Flutter Logom"),
                        // bir widgetin nullu nasıl yazılır sorusunun cevabı placeholderdır
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "Flutter Buttonlar",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Container(
            // margin: EdgeInsets.all(30),
            margin:EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  child: Text("Hilmi berkay ozdemit"),
                  onPressed: () => debugPrint("sa"),
                  color: Colors.orange,
                ),
                RaisedButton(
                  child: Text("Flutter"),
                  onPressed: () {
                    debugPrint(
                        "birden fazla fat arrow kullanamayız {} kullnarak fonksiyon acabiliriz");
                  },
                  elevation: 12,
                  textColor: Colors.yellow,
                  color: Colors.purple,
                ),
                RaisedButton(
                  child: Text("Flutter"),
                  onPressed: () {
                    debugPrint(
                        "birden fazla fat arrow kullanamayız {} kullnarak fonksiyon acabiliriz");
                  },
                  elevation: 12,
                  textColor: Colors.yellow,
                  color: Colors.blue.shade200,
                ),
                RaisedButton(

                  // Text("Hızla Devam Ediyor kursa")
                  child: Text("Hızla Devam Ediyor kursa"),

                  onPressed: () {
                    debugPrint(
                        "birden fazla fat arrow kullanamayız {} kullnarak fonksiyon acabiliriz");
                  },

                  elevation: 12,
                  textColor: Colors.yellow,
                  color: Colors.purple.shade300,
                ),
                IconButton(icon: Icon(Icons.ac_unit,color: Colors.blue,size: 48,),hoverColor: Colors.green,focusColor: Colors.black,tooltip: 'Increase volume by 10', onPressed: (){
                  debugPrint("Ben iconlu buttonum");
                }

                ),


              ],
            ),
        
          )

        ],
      ),
    ),
  ));
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

     
    throw UnimplementedError();
  }


}