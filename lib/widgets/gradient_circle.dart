import 'package:flutter/material.dart';

class MediumGradientCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
                BoxShadow(offset: Offset(5, 5),color: Colors.black,blurRadius: 5),
            BoxShadow(offset: Offset(-5, -5),color: Colors.white.withOpacity(0.1),blurRadius: 10)
              ]
    ),
      child: UnicornOutlineButton(
        strokeWidth: 6,
        radius: 130,
        gradient: LinearGradient(colors: [
          Colors.black.withOpacity(0.2),
          Colors.black.withOpacity(0.75),
          Color(0xff202328)
        ]),
        child: Container(
          margin: EdgeInsets.all(6),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75),
              image: DecorationImage(
                  image: AssetImage('asset/image/rose.jpg'),
                  fit: BoxFit.cover)),
        ),
        onPressed: () {},
      ),
    );
  }
}


class LargeGradientCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
            child: Container(
        decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(125), boxShadow: [
            BoxShadow(offset: Offset(5, 5),color: Colors.black,blurRadius: 5),
            BoxShadow(offset: Offset(-5, -5),color: Colors.white.withOpacity(0.1),blurRadius: 10)
        ]),
        child: UnicornOutlineButton(
            strokeWidth: 6,
            radius: 170,
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.75),
              Color(0xff202328)
            ]),
            child: Container(
              margin: EdgeInsets.all(6),
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(125),
                  image: DecorationImage(
                      image: AssetImage('asset/image/rose.jpg'),
                      fit: BoxFit.cover)),
            ),
            onPressed: () {},
        ),
      ),
          );
  }
}




class UnicornOutlineButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  UnicornOutlineButton({
    @required double strokeWidth,
    @required double radius,
    @required Gradient gradient,
    @required Widget child,
    @required VoidCallback onPressed,
  })  : this._painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        this._child = child,
        this._callback = onPressed,
        this._radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints: BoxConstraints(minWidth: 88, minHeight: 48),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {@required double strokeWidth,
      @required double radius,
      @required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
