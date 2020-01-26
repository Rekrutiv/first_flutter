import 'package:flutter/material.dart';
import 'dart:math'; //for the randomization




void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Solid Software'),
//        ),
        body: SolidPage(),

      ),
    );
  }
}

class SolidPage extends StatefulWidget{
  @override
  _SolidPageState createState(){
    return _SolidPageState();
  }                                         // _ is used because we are defining a private class.
}

class _SolidPageState extends State<SolidPage>{
  var colors=[
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



  var currentColor=Colors.white;


  setRandomColor(){
    var rnd=Random().nextInt(colors.length);
    setState(() {                       //setstate function expect a call back function
      currentColor=colors[rnd];

    });
  }
  @override
  Widget build(BuildContext context){
    return InkWell(
        onTap: (){
          setState(() {
            var rgb=Random().nextInt(colors.length);
           currentColor=colors[rgb];
          });

    },
     child: Container(
      color: currentColor,


      child: Center(
        child: RaisedButton(
          color: Colors.green,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('Hey There!',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

          ),
          onPressed:setRandomColor,
          shape:
          RoundedRectangleBorder(borderRadius:BorderRadius.circular(40.0) ),
        ),
      ),
     ),
    );
  }
}
