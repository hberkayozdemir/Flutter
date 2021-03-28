import "package:flutter/material.dart";

class FormveTextFormField extends StatefulWidget {
  _FormveTextFormFieldState createState() => _FormveTextFormFieldState();
}

class _FormveTextFormFieldState extends State<FormveTextFormField> {
  String _adSoyad;
  String _sifre;
  String _email;
  bool otokontrol = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data:
          // ThemeData(accentColor: Colors.red, primaryColor: Colors.indigo),
          Theme.of(context).copyWith(
// biz copyWith kullanırsak widget treemdeki en yakın theme i alır ama eğer bir değişiklik yapmak istersek
// burda yapmamız gereken istediğimz farklılıkları tekrar tanımlamak olacaktır
              accentColor: Colors.indigo,
              primaryColor: Colors.indigo,
              hintColor: Colors.indigo,
              errorColor: Colors.red
              // primaryColorDark: Colors.red,
              ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Form ve text form field"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
              key: formKey,
              autovalidate: otokontrol,
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onSaved: (deger) => _adSoyad = deger,
                    validator: (String girilenVeri) {
                      if (girilenVeri.length < 6) {
                        return "Lütfen adınızı soy adınızı tam girin";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: "Adınız ve soy adınız",
                        labelText: "Ad soyad ",
                        // focusColor: Colors.blue,
                        // hoverColor: Colors.blue,

                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 4)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.amber, width: 4)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (deger) => _email = deger,
                    validator: _emailKontrol,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "fe:hbo@examplemail.com",
                        labelText: "e-mail",
                        // focusColor: Colors.blue,
                        // hoverColor: Colors.blue,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  TextFormField(
                    onSaved: (deger) => _sifre = deger,
                    validator: _passCheck,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Sifreniz",
                      labelText: "Şifre",
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 4)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber, width: 4)),
                    ),
                  ),
                  // RaisedButton(
                  //   onPressed: () {},
                  //   color: Colors.white,
                  //   disabledColor: Colors.amber,
                  //   child: Text(
                  //     "Ben cok yoruldum",
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.w400),
                  //   ),
                  // ),
                  RaisedButton.icon(
                      onPressed: _girisBilgileriniOnayla,
                      icon: Icon(Icons.save),
                      label: Text(" kaydet"))
                ],
              )),
        ),
      ),
    );
  }

  String _passCheck(String pass) {
    if (!(pass.length > 8)) {
      return "8 haneden az giremezsiniz";
    } else {
      return null;
    }
  }

  void _girisBilgileriniOnayla() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint(
          "Girilen mail :$_email  girilen ad :$_adSoyad  parola : $_sifre");
    } else {
      setState(() {
        otokontrol = true;
      });
    }
  }

  String _emailKontrol(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(email)) ? "Lütfen gecerli bir mail giriniz" : null;
  }
}
