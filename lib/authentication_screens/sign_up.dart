
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui_flutter/Animation/FadeAnimation.dart';
import 'package:store_ui_flutter/authentication_screens/auth_configration.dart';
import 'package:store_ui_flutter/authentication_screens/phone_verification.dart';
import 'package:store_ui_flutter/authentication_screens/sign_in.dart';
import 'package:store_ui_flutter/authentication_screens/welcome.dart';
import 'package:store_ui_flutter/splash_screens/constants.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,

        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Text('Sign Up',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          leading: IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomePage()),),
          ),

          actions: [
          ],
        ),

        body:
        FadeAnimation(1.6, SingleChildScrollView(

          child: Column(
            children: [

              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  // color: Colors.transparent,
                  image: DecorationImage(

                    image: ExactAssetImage("assets/images/authentication.png"),
                    fit: BoxFit.cover,
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
                          hintText: "User Name",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: InputBorder.none,
                          icon: Icon(Icons.person)
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: InputBorder.none,
                          icon: Icon(Icons.phone)
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

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
                          hintText: "Email Address",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: InputBorder.none,
                          icon: Icon(Icons.email)
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

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
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: InputBorder.none,
                          icon: Icon(Icons.lock)
                      ),
                    ),
                  ),
                ),
              ),





              SizedBox(height:25,),


              authButton(
                width: 300,
                color: favColor,
                text:'Sign Up',
                press: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => PhoneVerification()),);
                },),


              SizedBox(height: 10,),

              // splitter
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Text.rich(
                  TextSpan(
                      text: "Already have an account ? ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,

                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(fontSize: 16,color: favColor,fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                            // single tapped
                          },
                        ),

                      ]
                  )
              ),







            ],
          ),
        ))

    );
  }
}