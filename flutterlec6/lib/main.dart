import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange.shade200,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Odevim"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.orange.shade100,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(3),
                  child: Text(
                    "D",
                    style: TextStyle(fontSize: 24),
                  ),
                ),


                Container(
                  color: Colors.orange.shade300,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(3),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

                Container(
                  color: Colors.orange.shade500,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(3),
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

                Container(
                  color: Colors.orange.shade700,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(3),
                  child: Text(
                    "T",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

              ],
            ),
            Container(
              color: Colors.orange.shade700,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(3),
              child: Text(
                "E",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              color: Colors.orange.shade700,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(3),
              child: Text(
                "R",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              color: Colors.orange.shade700,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(3),
              child: Text(
                "S",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              color: Colors.orange.shade700,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(3),
              child: Text(
                "L",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              color: Colors.orange.shade700,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(3),
              child: Text(
                "R",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              color: Colors.orange.shade700,
              padding: EdgeInsets.all(23),
              margin: EdgeInsets.all(3),
              child: Text(
                "  İ",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
