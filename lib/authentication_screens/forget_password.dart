
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui_flutter/Animation/FadeAnimation.dart';
import 'package:store_ui_flutter/authentication_screens/auth_configration.dart';
import 'package:store_ui_flutter/authentication_screens/welcome.dart';
import 'package:store_ui_flutter/splash_screens/constants.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,

        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Text('Forget Password',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          leading: IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomePage()),),
          ),
        ),

        body: FadeAnimation(1.6,Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),

          child: Column(
            children: [

              Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/img.png"),
                    // fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[100]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email or Phone number",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: InputBorder.none,
                          icon: Icon(Icons.email)
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50,),

              authButton(
                color: favColor,
                width: 250,
                text:'Continue',
                press: () {

                },),







            ],
          ),
        ))

    );
  }
}