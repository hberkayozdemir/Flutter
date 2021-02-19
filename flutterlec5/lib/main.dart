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
          body:
          Column(

            children: <Widget> [
            Text(
            "Resim ve Buton Türleri",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget> [
                    Text("Hilmi"),
                    // buraya resim image gelicek ama nasıl
                    // pubsec.yuml dosyasına tanımlama yapcaz
                    Image.network("https://smartpro.com.tr/wp-content/uploads/2019/05/logo-tasarimi-gorsel-1200x675.jpg",width: 40,height: 40,),
                    Text("Asset Image"),

                  ],

                ),



              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget> [
                    Text("Hilmi"),
                    // buraya resim image gelicek ama nasıl
                    // pubsec.yuml dosyasına tanımlama yapcaz
                    Image.asset("assets/images/logo.png",width: 40,height: 40,),
                    Text("Asset Image"),

                  ],

                ),



              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget> [

                    CircleAvatar(


                      // backgroundColor: Colors.blue,
                      backgroundImage: NetworkImage("http://ebs.aydin.edu.tr/index.iau?Page=imgPersonel&PicID=SO1ikxNasRv8JfgSpSk8Vg%3D%3D") ,
                      radius: 40,
                    ),
                    Text("Hilmi"),

                  ],

                ),



              ),


            ],

          ),


        ],
      )

  ),)
  ,
  );
}
