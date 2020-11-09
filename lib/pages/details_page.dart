import 'package:flutter/material.dart';
import 'home_page.dart';

class DetailsPage extends StatelessWidget {
  final String image, title, description;

  const DetailsPage({
    this.image,
    this.title,
    this.description,
    Key key,
  }) : super(key: key);

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
              image: ExactAssetImage(image),
              fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 20, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFDC8F47),
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()));
                  },
                ),
              ),
              SizedBox(height: 90,),
              Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 10,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                description,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  height: 1.25
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
