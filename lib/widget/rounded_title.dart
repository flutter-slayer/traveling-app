import 'package:flutter/material.dart';


class RoundedTitle extends StatelessWidget {

  final String title;

  const RoundedTitle({
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white.withOpacity(0.25),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
