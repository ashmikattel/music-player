import 'package:flutter/material.dart';
import 'package:simple_music_player/widgets/gradient_circle.dart';
import 'package:simple_music_player/widgets/music_list.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff2f3030),Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.75],
              ),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(60),
                child: Center(
                    child: Text(
                  'EVOL . FUTURE',
                  style: TextStyle(
                      color: Color(0xff727478),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff222529),
                      border: Border.all(color:Color(0xff181A1E).withOpacity(0.35),width: 3),
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [
                      //   BoxShadow(
                      //   color: Color(0xff333940).withOpacity(0.40),
                      //       blurRadius: 30,
                      //       spreadRadius: 3,
                      //       offset: Offset(0.0, 0.75),
                      // )
                      BoxShadow(offset: Offset(5, 5),color: Colors.black,blurRadius: 5),
            BoxShadow(offset: Offset(-5, -5),color: Colors.white.withOpacity(0.1),blurRadius: 10)
                      ]
                    ),
                    child: Center(
                        child: Icon(
                      Icons.favorite,
                      color: Color(0xff84868A)
                    )),
                  ),
                  onTap: () {},
                ),
               MediumGradientCircle(),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 50,
                     decoration: BoxDecoration(
                      color: Color(0xff222529),
                      border: Border.all(color:Color(0xff181A1E).withOpacity(0.30),width: 3),
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [
                      BoxShadow(offset: Offset(5, 5),color: Colors.black,blurRadius: 5),
            BoxShadow(offset: Offset(-5, -5),color: Colors.white.withOpacity(0.1),blurRadius: 10)
                      ]
                    ),
                    child: Center(
                        child: Icon(
                      Icons.more_horiz,
                      color: Color(0xff84868A),
                    )),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            MusicListModel(),
          ],
        ),
      ),
    );
  }
}
