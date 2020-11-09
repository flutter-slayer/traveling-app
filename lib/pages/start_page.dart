import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.75), BlendMode.dstATop),
              image: ExactAssetImage('assets/sunset1.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 350, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TyperAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Hello",
                  ],
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    letterSpacing: 10,
                  ),
                  speed: Duration(milliseconds: 500),
                  textAlign: TextAlign.start,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'D',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Script',
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'iscover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      letterSpacing: 5,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'F',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Script',
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'reedom',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      letterSpacing: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Take a city break and discover the beauty of nature.unwild without any worries and find out what freedom really means',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Explore more',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 3),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDC8F47),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFDC8F47),
                              offset: Offset(0, 0),
                              blurRadius: 15.0,
                              spreadRadius: 0),
                        ]),
                    child: IconButton(
                      icon: Icon(
                        Icons.navigate_next,
                        size: 25,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
