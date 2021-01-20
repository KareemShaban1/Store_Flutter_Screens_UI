import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:store_ui_flutter/authentication_screens/auth_configration.dart';
import 'package:store_ui_flutter/authentication_screens/sign_in.dart';
import 'package:store_ui_flutter/authentication_screens/sign_up.dart';
import 'package:store_ui_flutter/splash_screens/constants.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          height: double.infinity,
          width: double.infinity,
          color: Colors.white,


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 80,),

              Center(child:
               Text.rich(
                  TextSpan(
                      text: "Creative ",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Store',
                          style: TextStyle(fontSize: 30,color: Colors.black45),
                        ),
                      ]
                  )
              ),),

              SizedBox(height: 30,),

              Container(
                width: double.infinity,
                height: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/img.png"),
                  ),
                ),
              ),

              SizedBox(height: 100,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  authButton(
                    color: favColor,
                    width: 150,
                    text: "Sign Up",
                    press: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                    },
                  ),

                  SizedBox(width: 10,),

                  authButton(
                    color: Color(0xff2f2e41),
                    width: 150,
                    text: "Sign In",
                    press: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                    },
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

