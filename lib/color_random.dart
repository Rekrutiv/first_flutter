import 'package:flutter/material.dart';
import 'dart:math'; //for the randomization
import 'package:first_flutter_app/color.dart';
class ColorRandom extends StatefulWidget{
  @override
  _ColorRandomState createState(){
    return _ColorRandomState();
  }
}

class _ColorRandomState extends State<ColorRandom> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.green,
    //colors(0xFF and paste color code)

  ];


  var currentColor = Colors.white;
   String _color_text='Hi User!';

  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    setState(() { //setstate function expect a call back function
      currentColor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          setRandomColor();
        });
      },

      child: Container(
        color: currentColor,


        child: Center(
          child: RaisedButton(
            //color: Colors.green,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: ColorText(_color_text
             // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),

            onPressed:()  {
              setState((){
                _color_text='have a nice day';
              });
            },
          ),
        ),
      ),
    );
  }
}