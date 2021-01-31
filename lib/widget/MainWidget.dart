import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ColorProvider.dart';

class  MainWidget extends StatelessWidget {
  const MainWidget({
    Key key,
    @required this.currentColor,
    @required this.counterClick,
  }) : super(key: key);

  final Color currentColor;
  final ColorProvider counterClick;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration (seconds: 1),
      width: 200,
      height: 200,
      decoration:
      BoxDecoration(color: currentColor, shape: BoxShape.circle,
      ),

      child: Consumer<ColorProvider>(
        builder: (_, colorProvider, __) => Center(
          child: Text(
              "Total price: ${counterClick.mainText}",
              style: TextStyle(
                  color: Colors.green[700],
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Open Sans',
                  fontSize: 20)),
        ),
      ),
    );
  }
}