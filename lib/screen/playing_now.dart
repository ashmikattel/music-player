import 'package:flutter/material.dart';
import 'package:simple_music_player/widgets/gradient_button.dart';
import 'package:simple_music_player/widgets/gradient_circle.dart';
import 'package:simple_music_player/widgets/music_slider.dart';
import 'package:simple_music_player/widgets/play_resume_button.dart';
class NowPlayingScreen extends StatelessWidget {
  String musicName;
  String band;
  NowPlayingScreen({this.musicName, this.band});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff2f3030),Colors.black,
                  //Colors.red,Colors.blue
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.75],
              ),
            ),
            child: Column(
        children: <Widget>[
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
                          boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            //color: Color(0xff333940),//.withOpacity(0.40),
                                blurRadius: 20,
                                spreadRadius: 3,
                                offset: Offset(0.0, 0.75),
                          )]
                        ),
                        child: Center(
                            child: Icon(
                          Icons.arrow_back,
                          color: Color(0xff84868A)
                        )),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                Container(
                    margin: EdgeInsets.all(50),
                    child: Center(
                        child: Text(
                      'PLAYING NOW',
                      style: TextStyle(
                          color: Color(0xff727478),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ))),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff222529),
                          border: Border.all(color:Color(0xff181A1E).withOpacity(0.35),width: 3),
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            //color: Color(0xff333940),//.withOpacity(0.40),
                                blurRadius: 20,
                                spreadRadius: 3,
                                offset: Offset(0.0, 0.75),
                          )]
                        ),
                        child: Center(
                            child: Icon(
                          Icons.menu,
                          color: Color(0xff84868A)
                        )),
                      ),
                      onTap: () {},
                    ),
              ],
            ),
            LargeGradientCircle(),
            SizedBox(height: 20,),
            Column(
              children: <Widget>[
                Center(
                        child: Text(
                      'Low Life',
                      style: TextStyle(
                          color: Color(0xff727478),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )),
                    SizedBox(height: 10,),
                    Center(
                        child: Text(
                      'Future ft. The Weekend',
                      style: TextStyle(
                          color: Color(0xff727478),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
              ],
            ),
            SizedBox(height: 10,),
            Container( 
              width: 300,
              child: MusicSliderModel()),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PlayLeftButtom(),
              LargeGradientButtonModel(),
              PlayRightButtom()
            ],)
        ],      
      ),
          ),
    );
  }
}