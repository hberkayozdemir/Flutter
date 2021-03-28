import "package:flutter/material.dart";

class CheckBoxSlider extends StatefulWidget {
  _CheckBoxSliderState createState() => _CheckBoxSliderState();
}

class _CheckBoxSliderState extends State<CheckBoxSlider> {
  bool checkboxState = false;
  String sehir = "";
  bool switchState = false;
  double sliderValue = 10;
  String secilen = "kirmizi";
  String secilenSehir = "ankara";
  List<String> sehirler = [
    "ankara",
    "bursa",
    "istanbul",
    "izmir",
    "hatay",
    "muş"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add_alert), onPressed: () {}),
      appBar: AppBar(
        title: Text("Diğer form elemanları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            CheckboxListTile(
                title: Text("İnanıyor musunuz?"),
                subtitle: Text("Checkboxları beğendiniz mi?"),
                activeColor: Colors.green,
                secondary: Icon(Icons.adb_sharp),
                // default değeri sec
                selected: true,
                value: checkboxState,
                onChanged: (secildi) {
                  setState(() {
                    checkboxState = secildi;
                    debugPrint("Karar $secildi");
                  });
                }),
            RadioListTile<String>(
                title: Text("ankara"),
                subtitle: Text("Şehir ismi"),
                secondary: Icon(Icons.map_sharp),
                value: "Ankara",
                groupValue: sehir,
                onChanged: (deger) {
                  setState(() {
                    sehir = deger;
                    debugPrint("Secilen sehir $sehir");
                  });
                }),
            RadioListTile<String>(
              secondary: Icon(Icons.map_sharp),
              title: Text("Bursa"),
              subtitle: Text("Şehir ismi"),
              value: "Bursa",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen sehir $sehir");
                });
              },
            ),
            RadioListTile<String>(
              secondary: Icon(Icons.map_sharp),
              title: Text("İstanbul"),
              subtitle: Text("Şehir ismi"),
              value: "İstanbul",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen sehir $sehir");
                });
              },
            ),
            SwitchListTile(
                secondary: Icon(Icons.fireplace),
                title: Text("Friendly fire ${switchState ? "on" : "off"}"),
                subtitle: Text(
                    "${switchState ? "Herkes birbirine saldırabilir" : "Kimse birbirine saldıramaz"}"),
                value: switchState,
                onChanged: (value) {
                  setState(() {
                    switchState = value;
                  });
                }),
            Text("Değeri Sliderdan seciniz."),
            Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 10,
              max: 20,
              divisions: 20,
              label: sliderValue.toString(),
            ),
            // DropdownButton<String>(
            //   items: [
            //     DropdownMenuItem<String>(
            //       child: Row(
            //         children: [
            //           Container(
            //             width: 24,
            //             height: 24,
            //             color: Colors.red,
            //             margin: EdgeInsets.only(right: 10),
            //           ),
            //           Text("Kırmızı"),
            //         ],
            //       ),
            //       value: "Kirmizi",
            //     ),
            //     DropdownMenuItem<String>(
            //       child: Row(
            //         children: [
            //           Container(
            //             width: 24,
            //             height: 24,
            //             color: Colors.indigo,
            //             margin: EdgeInsets.only(right: 10),
            //           ),
            //           Text("İndigo"),
            //         ],
            //       ),
            //       value: "indigo",
            //     ),
            //     DropdownMenuItem<String>(
            //       child: Row(
            //         children: [
            //           Container(
            //             width: 24,
            //             height: 24,
            //             color: Colors.pink,
            //             margin: EdgeInsets.only(right: 10),
            //           ),
            //           Text("Pink"),
            //         ],
            //       ),
            //       value: "pink",
            //     ),
            //   ],
            //   onChanged: (String choosen) {
            //     setState(() {
            //       secilen = choosen;
            //     });
            //   },
            //   hint: Text("Seciniz."),
            //   value: secilen,
            // ),
            DropdownButton<String>(
              items: sehirler.map((currentSehir) {
                return DropdownMenuItem<String>(
                  child: Text("$currentSehir"),
                  value: currentSehir,
                );
              }).toList(),
              onChanged: (s) {
                setState(() {
                  secilenSehir = s;
                });
              },
              value: secilenSehir,
            ),
          ],
        ),
      ),
    );
  }
}
