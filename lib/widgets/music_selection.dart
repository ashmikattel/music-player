import 'package:flutter/material.dart';

class MusicSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 70,
          width: 350,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff2f3030),Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.75],
              ),
              border: Border.all(
                  color: Color(0xff181A1E).withOpacity(0.30),
                  width: 3), 
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(offset: Offset(5, 5),color: Colors.black,blurRadius: 5),
            BoxShadow(offset: Offset(-5, -5),color: Colors.white.withOpacity(0.1),blurRadius: 10),
              ]),
    );
  }
}
