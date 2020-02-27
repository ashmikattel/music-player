import 'package:flutter/material.dart';
class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width,
    this.height,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

class LargeGradientButtonModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Center(
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color(0xff262D32),
            blurRadius: 20,
            spreadRadius: 3,
            offset: Offset(0.0, 0.75),
          )],
          gradient: LinearGradient(
        colors: <Color>[
        Color(0xfff50000),
         Color(0xfff50000),
        Color(0xfff50000),
         Color(0xffEC4C24),
         Colors.deepOrange.withOpacity(1), 
           Colors.deepOrange,
            Colors.orange,
          
        ],
        begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                //stops: [0.3, 0.75],
  ),
           border: Border.all(color: Colors.deepOrange,width: 3),
            borderRadius: BorderRadius.circular(40.0),
        ),
        child: RaisedGradientButton(
          child: Icon(
                      Icons.pause,
                      color: Colors.white
                    ),
                    onPressed: (){},
),
      ),
);
  }
}





class SmallGradientButtonModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Center(
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color(0xff262D32),
            blurRadius: 20,
            spreadRadius: 3,
            offset: Offset(0.0, 0.75),
          )],
          gradient: LinearGradient(
        colors: <Color>[
        Color(0xfff50000),
         Color(0xfff50000),
        Color(0xfff50000),
         Color(0xffEC4C24),
         Colors.deepOrange.withOpacity(1), 
           Colors.deepOrange,
            Colors.orange,
        ],
        begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                //stops: [0.3, 0.75],
  ),
           border: Border.all(color: Colors.deepOrange,width: 2),
            borderRadius: BorderRadius.circular(15.0),
        ),
        child: RaisedGradientButton(
          child: Icon(
                      Icons.pause,
                      color: Colors.white
                    ),
                    onPressed: (){},
),
      ),
);
  }
}