import 'package:flutter/material.dart';

class HomeScreenComponent extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Icon icon;
  final Widget content;
  final Widget customContent;

  HomeScreenComponent(
      {@required this.height,
      this.width,
      @required this.color,
      this.icon,
      this.content,
      this.customContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Column(
        children: [content],
      ),
    );
  }
}
