import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  final String titleText;
  final IconData icon;

  DrawerComponent({@required this.titleText, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.green[700],
        size: 42,
      ),
      title: Text(
        titleText,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
      ),
    );
  }
}
