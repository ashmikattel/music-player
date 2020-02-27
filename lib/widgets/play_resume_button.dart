import 'package:flutter/material.dart';

class PlayLeftButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xff222529),
            border: Border.all(
                color: Color(0xff181A1E).withOpacity(0.30), width: 3), //262A2F
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xff333940).withOpacity(0.60),
                blurRadius: 20,
                spreadRadius: 3,
                offset: Offset(0.0, 0.75),
              )
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
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xff222529),
            border: Border.all(
                color: Color(0xff181A1E).withOpacity(0.30), width: 3), //262A2F
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xff333940).withOpacity(0.60),
                blurRadius: 20,
                spreadRadius: 3,
                offset: Offset(0.0, 0.75),
              )
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

