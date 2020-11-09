import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  final String asset, title;

  const Categories({
    this.asset,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFBE7753),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SvgPicture.asset(
            asset,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: "Roboto"),
        ),
      ],
    );
  }
}
