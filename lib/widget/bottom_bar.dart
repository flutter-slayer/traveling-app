import 'package:flutter/material.dart';
import 'bottom_bar_icon.dart';
import 'package:traveling/pages/home_page.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 40, right: 40, bottom: 10),
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomBarIcons(
              icon: Icons.home,
              color: Color(0xFFBE7753),
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            BottomBarIcons(
              icon: Icons.favorite,
              color: Colors.white,
              press: () {},
            ),
            BottomBarIcons(
              icon: Icons.person,
              color: Colors.white,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
