import 'package:flutter/material.dart';
import 'dart:math' as math;

class scaffoldd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CollapseToolBarOrnek(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("anan yani");
        },
        child: Icon(Icons.airplanemode_active_outlined),
      ),
    );
  }
}

class CollapseToolBarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          snap: true, // sak diye düsüyor tool bar biraz bile ceksek
          // varsayılanı false
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "https://media.giphy.com/media/WlBUAWG03Zic8/giphy.gif",
              fit: BoxFit.fitHeight,
            ),
          ),
          title: Text(
            "    Fly Me",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
          ),
          backgroundColor: Colors.black,
          expandedHeight: 300,
          // brightness: Brightness.dark,
          floating: true,
          // brightness onemli bir yapı daha iyi gorebilmek icin main theme data nın icinde kullanmak daha mantıklı
        ),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverList(
            delegate:
                //üye demek

                SliverChildListDelegate(listwidgetsliverlist()),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(26),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dynamicFieldCreator,
                childCount: 10),
          ),
        ),
        // SliverGrid(delegate: delegate, gridDelegate: gridDelegate),

        SliverFixedExtentList(
            delegate: SliverChildListDelegate(listwidgetsliverlist()),
            itemExtent: 300),

        SliverFixedExtentList(
          //builder
          delegate:
              SliverChildBuilderDelegate(_dynamicFieldCreator, childCount: 10),
          itemExtent: 50,
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(
            listwidgetsliverlist(),
          ),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate:
              SliverChildBuilderDelegate(_dynamicFieldCreator, childCount: 15),
        ),
      ],
    );
  }

  Widget _dynamicFieldCreator(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: randomcolorGen(),
        ),
        color: randomcolorGen(),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      height: 150,
      child: Text(
        "Europe ${index + 1}",
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }

  List<Widget> listwidgetsliverlist() {
    return [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: randomcolorGen(),
          ),
          color: randomcolorGen(),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        height: 150,
        child: Text(
          "Europe",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: randomcolorGen(),
          ),
          color: randomcolorGen(),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        height: 150,
        child: Text(
          "Asia",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: randomcolorGen(),
          ),
          color: randomcolorGen(),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        height: 150,
        child: Text(
          "South America",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: randomcolorGen(),
          ),
          color: randomcolorGen(),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        height: 150,
        child: Text(
          "Auturalia",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: randomcolorGen(),
          ),
          color: randomcolorGen(),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        height: 150,
        child: Text(
          "America",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: randomcolorGen(),
          ),
          color: randomcolorGen(),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        height: 150,
        child: Text(
          "   Antartica",
          style: TextStyle(fontSize: 18, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Color randomcolorGen() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}
