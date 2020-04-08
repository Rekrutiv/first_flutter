import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_flutter_app/ColorProvider.dart';
import 'ColorRandom.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => ColorProvider()),
        ChangeNotifierProvider(create: (_) => ColorRandom())
      ], child: new MyHomePage(title: 'Flutter Color Random')),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  static var currentColor = Colors.white;
  final colors = [
    Colors.amber,
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.green,
    //colors(0xFF and paste color code)
  ];
  final String title;
  final colorProvider = ColorProvider();
  final colorRandom = ColorRandom();

  @override
  Widget build(BuildContext context) {
    final counterClick = Provider.of<ColorProvider>(context, listen: false);
    final random = Provider.of<ColorRandom>(context, listen: false);
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Consumer<ColorRandom>(
        builder: (_, colorRandom, __) => InkWell(
          onTap: () {
            random.setRandomColor();
            currentColor = colors[random.indexColor];
          },
          child: Container(
            color: currentColor,
            child: new Center(
              child: Consumer<ColorProvider>(
                builder: (_, colorProvider, __) =>
                    Text("Total price: ${counterClick.mainText}"),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: counterClick.increment,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
