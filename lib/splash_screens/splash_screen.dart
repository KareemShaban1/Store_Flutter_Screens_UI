import 'package:flutter/material.dart';
import 'package:store_ui_flutter/authentication_screens/welcome.dart';
import 'package:store_ui_flutter/splash_screens/configuration.dart';
import 'package:store_ui_flutter/splash_screens/constants.dart';
import 'package:store_ui_flutter/splash_screens/splash_content.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(


      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text1": "Discover",
      "text2": "Discover amazing deals and cashback\n    offers to earn money online",
      "image": "assets/images/search.png"
    },
    {
      "text1": "Pay",
      "text2": "Grab exciting deals and redeemable\n     points on next transaction",
      "image": "assets/images/pay.png"
    },
    {
      "text1": "Enjoy",
      "text2": "Grab exciting deals and redeemable\n     points on next transaction",
      "image": "assets/images/enjoy.png"
    },

    // {
    //   "text": "Just stay at home with us",
    //   "image": "assets/images/at_home.png"
    // }

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: SizedBox(
        width: double.infinity,

        child: Column(
          children: <Widget>[

            Expanded(
              flex: 6,
              child: PageView.builder(

                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text1: splashData[index]['text1'],
                  text2: splashData[index]['text2'],

                ),

              ),

            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 3),





                    SplahButton(
                      text: "Skip",
                      press: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomePage()),);
                      },
                    ),
                    Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),

                    Spacer(),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.black : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplahButton extends StatelessWidget {
  const SplahButton({
    Key key,
    this.text,
    this.press,

  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: getProportionateScreenHeight(60),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        // color: Color(0xFFF27E63),
        // color: Colors.black,
        color: favColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
