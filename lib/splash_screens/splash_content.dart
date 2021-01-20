import 'package:flutter/material.dart';
import 'package:store_ui_flutter/splash_screens/configuration.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text1,
    this.text2,
    this.image,
  }) : super(key: key);
  final String text1, text2,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 70,),

        // RichText(text: TextSpan(
        //     children: [
        //
        //       TextSpan(text:'Creative',style:TextStyle(
        //         fontSize: getProportionateScreenWidth(45),
        //         // color: Color(0xFFF27E63),
        //         color: Color(0xff3C8590),
        //         // color: Colors.black,
        //         fontWeight: FontWeight.bold,
        //       ), ),
        //
        //       TextSpan(text:' Store',style:TextStyle(
        //         fontSize: getProportionateScreenWidth(46),
        //         // color: Color(0xFFF27E63),
        //         // color: Color(0xff3C8590),
        //         color: Colors.black,
        //         fontWeight: FontWeight.bold,
        //       ), ),
        //
        //
        //     ]
        // )),

        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(290),
        ),

        SizedBox(height: 80,),


        Text(
          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),

        SizedBox(height: 20,),

        Text(
          text2,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),
        ),





      ],
    );
  }
}
