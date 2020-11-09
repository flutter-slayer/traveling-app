import 'package:flutter/material.dart';


class BottomBarIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function press;

  const BottomBarIcons({
    this.icon,
    this.color,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
        size: 35,
      ),
      onPressed: press,
    );
  }
}
