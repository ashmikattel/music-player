import 'package:flutter/material.dart';
import 'package:simple_music_player/model/music_list_model.dart';

class PlayList extends StatelessWidget {
  String musicName;
  String band;
  PlayList({this.musicName, this.band});
  List<MusicModel>musicData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (ctx , index){
              return ListTile(
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
                        color: Color(0xff212429),
                        border: Border.all(color:Color(0xff24292D),width: 2),
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [BoxShadow(
                          color: Color(0xff333436),
                              blurRadius: 10,
                              spreadRadius: 3,
                              offset: Offset(0.0, 0.75),
                        )]
                      ),
                      child: Center(
                          child: Icon(
                        Icons.play_arrow,
                        color: Color(0xff84868A),
                      )),
                    ),
                    onTap: () {},
                  ),);
            },
            itemCount: musicData.length,
          ),
        ),
    );
  }
}
