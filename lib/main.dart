import 'package:flutter/material.dart';
import 'package:first_flutter_app/color_random.dart';





void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      debugShowCheckedModeBanner: false,
//      theme: ThemeData.dark(),
      home: Scaffold(
//        appBar: AppBar(
//          title: Text(
//           Solid Software'),
//        ),
        body: ColorRandom(),

      ),
    );
  }
}



