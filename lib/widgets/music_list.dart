import 'package:flutter/material.dart';
import 'package:simple_music_player/model/music_list_model.dart';
import 'package:simple_music_player/screen/playing_now.dart';

class MusicListModel extends StatelessWidget {
  String musicName;
  String band;
  MusicListModel({this.musicName, this.band});

  List<MusicModel> musicData = [
    MusicModel(musicName: "Ain't No Time", band: "Future"),
    MusicModel(musicName: "In Her Mouth", band: "Future"),
    MusicModel(musicName: "Low Life", band: "Future.the Weekend "),
    MusicModel(musicName: "Xanny Family", band: "Future"),
    MusicModel(musicName: "Lill Haiti Baby", band: "Future"),
    MusicModel(musicName: "Photo Copied", band: "Future"),
    MusicModel(musicName: "Seven Rings", band: "Future"),
    MusicModel(musicName: "Lie To Me", band: "Future"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.builder(
          itemBuilder: (ctx , index){
            return InkWell(
                          child: ListTile(
                title: Text(musicData[index].musicName, style: TextStyle(
                        color: Color(0xffBCBDBF),
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                subtitle: Text(musicData[index].band,style: TextStyle(
                        color: Color(0xff6B6D71),
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                trailing: InkWell(
                    child: Container(
                      height: 30,
                      width: 30,
                       decoration: BoxDecoration(
                        color: Color(0xff181A1E).withOpacity(0.9),
                        border: Border.all(color:Color(0xff181A1E),width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                         BoxShadow(offset: Offset(5, 5),color: Colors.black,blurRadius: 5),
            BoxShadow(offset: Offset(-5, -5),color: Colors.white.withOpacity(0.1),blurRadius: 10)
                        ]
                      ),
                      child: Center(
                          child: Icon(
                        Icons.play_arrow,
                        color: Color(0xff84868A),
                      )),
                    ),
                    onTap: () {
                      
                    },
                  ),),
                  onTap: (){
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NowPlayingScreen()));
                  },
            );
          },
          itemCount: musicData.length,
        ),
      );
  }
}