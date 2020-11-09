import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingVisit extends StatelessWidget {
  final String image, destination;
  final Color color;
  final Function tap;

  const TrendingVisit({
    this.image,
    this.destination,
    this.color,
    this.tap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
          color: Color(0xFFBE7753), borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          GestureDetector(
            onTap: tap,
            child: Container(
              height: 130,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: ExactAssetImage(image), fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  destination,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white.withOpacity(0.25)),
                  child: Icon(
                    Icons.favorite_border,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
