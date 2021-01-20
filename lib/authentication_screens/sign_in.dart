
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui_flutter/Animation/FadeAnimation.dart';
import 'package:store_ui_flutter/authentication_screens/auth_configration.dart';
import 'package:store_ui_flutter/authentication_screens/forget_password.dart';
import 'package:store_ui_flutter/authentication_screens/sign_up.dart';
import 'package:store_ui_flutter/authentication_screens/welcome.dart';
import 'package:store_ui_flutter/splash_screens/constants.dart';

class SignIn extends StatelessWidget {
  // var _icon = Icons.brightness_2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,

        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Text('Sign In',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          leading: IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomePage()),),
          ),

          actions: [
          ],
        ),

        body:
        FadeAnimation(1.6,Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white

          ),

          child: Column(
            children: [

              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  // color: Colors.transparent,
                  image: DecorationImage(

                    image: ExactAssetImage("assets/images/sign_in.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                "assets/icons/icons-facebook.svg",
                                height: 25,
                                width: 25,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Center(
                              child: Text("Facebook", style: TextStyle(fontSize: 14,color: Colors.blue),),
                            ),
                          ],
                        ),
                      )
                  ),

                  SizedBox(width: 10,),

                  Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                "assets/icons/icons-apple.svg",
                                height: 25,
                                width: 25,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Center(
                              child: Text("Apple", style: TextStyle(fontSize: 14,color: Colors.black),),
                            ),

                          ],
                        ),

                      )
                  ),

                  SizedBox(width: 10,),

                  Container(

                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                "assets/icons/icons-google.svg",
                                height: 25,
                                width: 25,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Center(
                              child: Text("Google", style: TextStyle(fontSize: 14,color: Colors.black),),
                            ),

                          ],
                        ),

                      )
                  )


                ],
              ),

              SizedBox(height: 20,),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 140,
                    color: Colors.grey[500],
                  ),
                  SizedBox(width: 10,),
                  Text('Or',style: TextStyle(fontSize: 18,color: Colors.grey[500]),),
                  SizedBox(width: 10,),
                  Container(
                    height: 1,
                    width: 140,
                    color: Colors.grey[500],
                  ),

                ],
              ),


              SizedBox(height: 20,),



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

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ForgetPassword()),);
                    },
                      child: Text('Forget password ?',style: TextStyle(color: Colors.grey[800],fontSize: 16),)),
                )
                ],
              ),



              SizedBox(height: 20,),

              authButton(
                color: favColor,
                width: 250,
                text:'Sign In',
                press: () {
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
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,

                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(fontSize: 16,color: favColor,fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
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