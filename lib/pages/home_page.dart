import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:traveling/widget/trending_visit.dart';
import 'package:traveling/widget/bottom_bar.dart';
import 'package:traveling/widget/categories.dart';
import 'package:traveling/pages/details_page.dart';
import 'view_all.dart';
import 'package:traveling/widget/rounded_title.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xFFDC8F47)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    height: 50,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.25),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )),
                SizedBox(
                  width: 40,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TypewriterAnimatedTextKit(
              text: ["Explore Places:"],
              textStyle: TextStyle(
                  letterSpacing: 10,
                  fontSize: 25,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              onTap: () {},
              speed: Duration(milliseconds: 500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Popular Categories",
              style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Categories(
                  asset: "assets/mountain.svg",
                  title: "Mountain",
                ),
                Categories(
                  asset: "assets/tent.svg",
                  title: "Camp",
                ),
                Categories(
                  asset: "assets/canoe.svg",
                  title: "Lake",
                ),
                Categories(
                  asset: "assets/forest.svg",
                  title: "Forest",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RoundedTitle(
                  title: "Trending Visits",
                ),
                SizedBox(
                  width: 80,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewAll()));
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                        fontFamily: "Monterrast",
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      TrendingVisit(
                        image: "assets/observe.jpg",
                        destination: "Dolomites",
                        color: Colors.white,
                        tap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                        image: "assets/observe.jpg",
                                        title: "The Dolomites",
                                        description:
                                            "are a mountain range located in northeastern Italy. They form part of the Southern Limestone Alps and extend from the River Adige in the west to the Piave Valley in the east.",
                                      )));
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TrendingVisit(
                        tap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                        image: "assets/camp.jpg",
                                        title: "The Dolomites",
                                        description:
                                            "are a mountain range located in northeastern Italy. They form part of the Southern Limestone Alps and extend from the River Adige in the west to the Piave Valley in the east.",
                                      )));
                        },
                        image: "assets/camp.jpg",
                        destination: "Italy",
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TrendingVisit(
                        tap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                        image: "assets/mountain.jpg",
                                        title: "The Dolomites",
                                        description:
                                            "are a mountain range located in northeastern Italy. They form part of the Southern Limestone Alps and extend from the River Adige in the west to the Piave Valley in the east.",
                                      )));
                        },
                        image: "assets/mountain.jpg",
                        destination: "Italy",
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
