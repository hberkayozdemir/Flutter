import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast_web.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  // seperate builder nasıl yapılır?
  Widget build(BuildContext context) {
    ogrencilerinVerileriniGetir();
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0) {
          return Container(
            margin: EdgeInsets.all(12),
            height: 2,
          );
        } else {
          return Container(
            margin: EdgeInsets.all(14),
          );
        }
      },
      itemCount: 300,
      itemBuilder: (context, index) => Card(
        color: index % 2 == 0 ? Colors.blueAccent : Colors.orange.shade200,
        elevation: 20,
        child: ListTile(
          leading: Icon(
            Icons.whatshot,
            color: Colors.yellow,
          ),
          title: Text(tumOgrenciler[index]._isim,style: TextStyle(color: Colors.white),),
          subtitle: Text(tumOgrenciler[index]._aciklama,style: TextStyle(color: Colors.white)),
          trailing: CircleAvatar(
            child: Icon(Icons.book),
          ),
          // ontap kullanımı
          onTap: () {
            toastMesajGoster(1, index);
            alertDialogGoster(context);
          },
          onLongPress: () {
            toastMesajGoster(2, index);
// flutterda olmayan packagelar arıyacağız indireceğiz
          },
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   ogrencilerinVerileriniGetir();
  //   return ListView.builder(
  //     itemCount: 300,
  //     itemBuilder: (context, index) => Card(
  //       color: index % 2 == 0? Colors.blueAccent:Colors.pink.shade200,
  //       elevation: 20,
  //       child: ListTile(
  //         leading: Icon(Icons.whatshot,color: Colors.yellow,),
  //         title: Text(tumOgrenciler[index]._isim),
  //         subtitle: Text(tumOgrenciler[index]._aciklama),
  //         trailing: CircleAvatar(child: Icon(Icons.book),),
  //     ),
  //     ),
  //   );
  // }

  void alertDialogGoster(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog Başlığı"),
            content:SingleChildScrollView(

              child: ListBody(
                children: [

                  Text("alert dialog content"),

                Text("alert dialog content"),

              Text("alert dialog content"),

          Text("alert dialog content"),
          Text("alert dialog content"),
          Text("alert dialog content"),

                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),

                  Text("alert dialog content"),
                  Text("alert dialog content"),
                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),

                  Text("alert dialog content"),














                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Tamam"),
                onPressed: (){

                  Navigator.of(ctx).pop();


                },
              ),
              RaisedButton(
                child: Text("Kapat"),
                color: Colors.red,
                onPressed: (){    Navigator.of(ctx).pop();},
              )
            ],
          );
        });
  }

  void ogrencilerinVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci ${index + 1} . adı",
            "Ogrenci  acıklaması ${index + 1}", index % 2 == 0 ? true : false));
  }

  void toastMesajGoster(int option, int index) {
    if (option == 1) {
      Fluttertoast.showToast(
          msg: tumOgrenciler[index].toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 19.0);
    } else {
      Fluttertoast.showToast(
          msg: tumOgrenciler[index].toString(),
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.blue,
          textColor: Colors.yellow,
          fontSize: 19.0);
    }
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;
  String man = "erkek";
  String woman = "kadın";

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Secilen ogrenci adı $_isim aciklaması $_aciklama  cinsiyeti ${_cinsiyet ? man : woman}";
  }
}
