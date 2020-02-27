import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicSliderModel extends StatefulWidget {
  @override
  _MusicSliderModelState createState() => _MusicSliderModelState();
}

class _MusicSliderModelState extends State<MusicSliderModel> {
  double _value = 0.0;
  onChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbColor: Color(0xffA5871C),
          overlayColor: Color(0xff212428),
          activeTrackColor: Colors.red,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
        ),
        child: Center(
          child: Slider(
            value: _value,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
