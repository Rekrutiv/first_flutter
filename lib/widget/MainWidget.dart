import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ColorProvider.dart';

class  MainWidget extends StatelessWidget {
  const MainWidget({
    Key key,
    @required this.currentColor,
    @required this.sizeClick,
  }) : super(key: key);


  final Color currentColor;
  final SizeProvider sizeClick;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration (seconds: 2),
      curve: Curves.bounceOut,
      height: 100+sizeClick.sizeShape,
      width: 100+sizeClick.sizeShape,
      decoration:
      BoxDecoration(color: currentColor, shape: BoxShape.circle,
      ),

      child: Consumer<SizeProvider>(
        builder: (_, colorProvider, __) => Center(
          child: Text(
              "size: ${sizeClick.sizeShape}",
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