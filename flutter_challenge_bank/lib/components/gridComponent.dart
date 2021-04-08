import 'package:flutter/material.dart';

class GridComponent extends StatelessWidget {
  final String containerName;
  final IconData icon;
  final Widget imageIcon;

  GridComponent({@required this.containerName, this.icon, this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 1)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Icon(
                      icon,
                      color: Colors.blue[900],
                    ),
                  )
                : imageIcon,
            Text(
              containerName,
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
