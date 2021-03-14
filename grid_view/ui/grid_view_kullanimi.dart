import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(10.0, 0.5),
                      blurRadius: 20.0),
                ],
                // shape circle olması icin bu alttakinin olmaması lazım
                // borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),

                // coklu renk seciminde bu sekilde circular
                //  effect uygulayamıyoruz ama border all dersek isimizi gorur
                // border: Border(
                //     bottom: BorderSide(color: Colors.blue, width: 5),
                //     top: BorderSide(color: Colors.yellow, width: 9),
                //     left: BorderSide(color: Colors.green, width: 7),
                //     right: BorderSide(color: Colors.blue, width: 12)),

                // border: Border.all(
                //     color: Colors.black, width: 5, style: BorderStyle.solid),
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/seymam.jpg")),
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.yellow],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),

                // gradient veriğimiz icin burdaki blue colorun bir onemi kalmıyor

                color: Colors.blue[100 *
                    ((index + 1) %
                        8)]), // iki renk birden olmuyor birini silmemiz lazım

            // color: Colors.blue[100 * ((index + 1) % 8)],
            margin: EdgeInsets.all(25),
            child: Text(
              "$index",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.bold),
            ),
          ),

          /*
          onDoubleTap: ,
          onDoubleTapDown: ,
          onDoubleTapCancel: ,
          onForcePressEnd: ,
          onForcePressPeak: ,
          onForcePressStart: ,
          onForcePressUpdate: ,
          onHorizontalDragCancel: ,
          onHorizontalDragDown: ,
          onHorizontalDragEnd: ,
          onHorizontalDragStart: ,
          onHorizontalDragUpdate:  ,
          onLongPress: ,
          onLongPressEnd: ,
          onLongPressMoveUpdate: ,
          onLongPressStart: ,
          onLongPressUp: ,
          onPanCancel: ,
          onPanDown: ,
          onPanEnd: ,
          onPanStart: ,
          onPanUpdate: ,
          onScaleEnd: ,
          onScaleStart: ,
          onScaleUpdate: ,
          onSecondaryLongPress: ,
          onSecondaryLongPressEnd: ,
          onSecondaryLongPressMoveUpdate: ,
          onSecondaryLongPressStart: ,
          onSecondaryLongPressUp: ,
          onSecondaryTap: ,
          onSecondaryTapCancel: ,
          onSecondaryTapDown: ,
          onSecondaryTapUp: ,
          onTap: ,
          onTapCancel: ,
          onTapDown: ,
          onTapUp: ,
          onTertiaryTapCancel: ,
          onTertiaryTapDown: ,
          onTertiaryTapUp: ,
          onVerticalDragCancel: ,
          onVerticalDragDown: ,
          onVerticalDragEnd: ,
          onVerticalDragStart: ,
          onVerticalDragUpdate: ,
          */

          onTap: () => debugPrint("Merhaba flutter $index tıklanıldı"),
          onDoubleTap: () =>
              debugPrint("Merhaba flutter iki kez $index tıklanıldı"),
          onLongPress: () =>
              debugPrint("Merhaba flutter $index uzun tıklanıldı"),
          onHorizontalDragStart: (e) =>
              debugPrint("Yatay kayım yapıldu $index ve $e"),
        );
      },
    );
  }
}

/*

verdiğimiz sayıya gore ve yone gore o ekrana sıgdırır.

*/

//  GridView.count(
//       crossAxisCount: 3,
//       primary: false,
//       reverse: false,
//       scrollDirection: Axis.vertical,
//       padding: EdgeInsets.all(10),
//       crossAxisSpacing: 20,
//       mainAxisSpacing: 40,
//       children: [
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 1",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 2",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 3",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 4",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 5",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 6",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 7",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 8",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 9",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 10",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 11",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 12",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 13",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 14",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 15",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 16",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 17",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 18",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 19",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 20",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 21",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 22",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 23",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 24",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 26",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 27",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 28",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 29",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 30",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 31",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 32",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 33",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 34",
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ],
//     );

/*

Grid view extent te bloklarımız containerlarımız containerların widthine 
gore sekillenir
*/
// GridView.extent(
//       maxCrossAxisExtent: 100,
//       reverse: false,
//       primary: false,
//       scrollDirection: Axis.vertical,
//       padding: EdgeInsets.all(10),
//       crossAxisSpacing: 20,
//       mainAxisSpacing: 40,
//       children: [
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 1",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 2",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 3",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 4",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 5",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 6",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 7",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 8",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 9",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 10",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 11",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 12",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 13",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 14",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 15",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 16",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 17",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 18",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 19",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 20",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 21",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 22",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 23",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 24",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 26",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 27",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 28",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 29",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 30",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 31",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 32",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 33",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.teal.shade300,
//           child: Text(
//             "Merhaba 34",
//             textAlign: TextAlign.center,
//           ),
//         )
//       ],
//     );

//builder gridview

//  GridView.builder(
//       gridDelegate:
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           alignment: Alignment.center,
//           color: Colors.blue[100 * ((index + 1) % 8)],
//           child: Text(
//             "merhaba amk $index",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: Colors.grey[100 * ((index - 1) % 8)],
//                 fontSize: 44,
//                 fontWeight: FontWeight.bold),
//           ),
//         );
//       },
//     );

// Container(
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.yellow,
//                     offset: Offset(10.0, 0.5),
//                     blurRadius: 20.0),
//               ],
//               // shape circle olması icin bu alttakinin olmaması lazım
//               // borderRadius: BorderRadius.circular(20.0),
//               border: Border.all(
//                 color: Colors.black,
//                 width: 5,
//               ),

//               // coklu renk seciminde bu sekilde circular
//               //  effect uygulayamıyoruz ama border all dersek isimizi gorur
//               // border: Border(
//               //     bottom: BorderSide(color: Colors.blue, width: 5),
//               //     top: BorderSide(color: Colors.yellow, width: 9),
//               //     left: BorderSide(color: Colors.green, width: 7),
//               //     right: BorderSide(color: Colors.blue, width: 12)),

//               // border: Border.all(
//               //     color: Colors.black, width: 5, style: BorderStyle.solid),
//               image: DecorationImage(
//                   alignment: Alignment.topCenter,
//                   fit: BoxFit.fill,
//                   image: AssetImage("assets/images/seymam.jpg")),
//               gradient: LinearGradient(
//                   colors: [Colors.red, Colors.yellow],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter),

//               // gradient veriğimiz icin burdaki blue colorun bir onemi kalmıyor

//               color: Colors.blue[100 *
//                   ((index + 1) %
//                       8)]), // iki renk birden olmuyor birini silmemiz lazım

//           // color: Colors.blue[100 * ((index + 1) % 8)],
//           margin: EdgeInsets.all(25),
//           child: Text(
//             "$index",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: Colors.white, fontSize: 44, fontWeight: FontWeight.bold),
//           ),
//         );
