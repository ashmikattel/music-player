import 'package:flutter/material.dart';

class PlayLeftButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Color(0xff222529),
            border: Border.all(
                color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(40.0),
            boxShadow: [
                BoxShadow(offset: Offset(10, 10),color: Colors.black,blurRadius: 10),
            BoxShadow(offset: Offset(-10, -10),color: Colors.white.withOpacity(0.1),blurRadius: 10)
            ]),
        child: Center(
            child: Icon(
          Icons.arrow_left,
          size: 50,
          color: Color(0xff84868A),
        )),
    );
  }
}



class PlayRightButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Color(0xff222529),
            border: Border.all(
                color: Colors.black, width: 3), 
            borderRadius: BorderRadius.circular(40.0),
            boxShadow: [
               BoxShadow(offset: Offset(10, 10),color: Colors.black,blurRadius: 10),
            BoxShadow(offset: Offset(-10, -10),color: Colors.white.withOpacity(0.1),blurRadius: 10)
            ]),
        child: Center(
            child: Icon(
          Icons.arrow_right,
          size: 50,
          color: Color(0xff84868A),
        )),
    );
  }
}

