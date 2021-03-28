import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

class FormIslemleri extends StatefulWidget {
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  String girilenMetin = "";
  int maxLine = 1;
  FocusNode fNode;
  TextEditingController textController1;

  void initState() {
    maxLine = 3;
    super.initState();
    fNode = FocusNode();
    textController1 = TextEditingController(text: "Varsayılan");

    fNode.addListener(() {
      setState(() {
        if (fNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
  }

  void dispose() {
    fNode.dispose();
    textController1.dispose();
    maxLine = 1;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          textTheme: TextTheme(display4: TextStyle()),
          elevation: 20,
          title: Text(
            "FORM",
            style: TextStyle(fontSize: 34, color: Colors.white),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 24,
              height: 24,
              child: FloatingActionButton(
                mini: true,
                backgroundColor: Colors.lime,
                onPressed: () {
                  FocusScope.of(context).requestFocus(fNode);
                },
                child: Icon(Icons.ac_unit),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.pink,
              onPressed: () {
                textController1.text = "Buton verisi";
                FocusScope.of(context).requestFocus(fNode);
              },
              child: Icon(Icons.ac_unit),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                debugPrint(textController1.text.toString());
                FocusScope.of(context).requestFocus(fNode);
              },
              child: Icon(Icons.ac_unit),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                focusNode: fNode,
                // kullanıcmızdan sadece sayı girisi almak icim
                // keyboardType: TextInputType.numberWithOptions(),
                textInputAction: TextInputAction.done,
                // otomatik düzeltmeleri engelliyor
                autofocus: false,
                // bunu anladım :D
                maxLines: maxLine,
                maxLength: 20,
                controller: textController1,
                decoration: InputDecoration(
                    hintText: "Buraya sayı giriniz",
                    labelText: "Başlık",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    icon: Icon(Icons.edit),
                    prefixIcon: Icon(Icons.add),
                    suffixIcon: Icon(Icons.done),
                    filled: true,
                    fillColor: Colors.lime),

                maxLengthEnforced: true,
                onChanged: (s) {
                  // debugPrint("Patetesi severim  $s");
                  girilenMetin = s;
                },
                onSubmitted: (String s) {
                  // debugPrint("Kaydedilen sayı : $s");
                  girilenMetin = s;
                },

                cursorColor: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                // kullanıcmızdan sadece sayı girisi almak icim
                keyboardType: TextInputType.numberWithOptions(),
                // textInputAction: TextInputAction.done,
                // otomatik düzeltmeleri engelliyor
                autofocus: false,
                // bunu anladım :D
                maxLines: maxLine,
                maxLength: 20,
                controller: textController1,
                decoration: InputDecoration(
                    hintText: "Buraya sayı giriniz",
                    labelText: "Başlık",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    icon: Icon(Icons.edit),
                    prefixIcon: Icon(Icons.add),
                    suffixIcon: Icon(Icons.done),
                    filled: true,
                    fillColor: Colors.lime),

                maxLengthEnforced: true,
                onChanged: (s) {
                  debugPrint("Patetesi severim  $s");
                  girilenMetin = s;
                },
                onSubmitted: (String s) {
                  debugPrint("Kaydedilen sayı : $s");
                  girilenMetin = s;
                },

                cursorColor: Colors.green,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              height: 200,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              // color: Colors.teal[600],
              child: Align(
                alignment: Alignment.center,
                child: Text(" Girilen metinimiz \n $girilenMetin",
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ],
        ));
  }
}
