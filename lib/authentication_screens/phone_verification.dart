import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:store_ui_flutter/authentication_screens/auth_configration.dart';
import 'package:store_ui_flutter/authentication_screens/sign_up.dart';
import 'package:store_ui_flutter/splash_screens/constants.dart';


class PhoneVerification extends StatefulWidget {

  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  final BoxDecoration pinPutDecoration = BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(15.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Text('Verification Code',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),),
        ),

        actions: [
        ],
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              height: 40,
            ),

            Expanded(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 150.0,
                        decoration: BoxDecoration(
                          // color: Colors.transparent,
                          image: DecorationImage(

                            image: ExactAssetImage("assets/images/img.png"),
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),



                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: PinPut(
                                  eachFieldWidth: 55.0,
                                  eachFieldHeight: 55.0,
                                  fieldsCount: 5,
                                  focusNode: _pinPutFocusNode,
                                  controller: _pinPutController,
                                  submittedFieldDecoration: pinPutDecoration,
                                  selectedFieldDecoration: pinPutDecoration,
                                  followingFieldDecoration: pinPutDecoration,
                                  pinAnimationType: PinAnimationType.scale,
                                  textStyle: const TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 50,),

                      Text.rich(
                          TextSpan(
                              text: "Didn't receive the OPT ? ",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16,

                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'Resend',
                                  style: TextStyle(fontSize: 16,color: favColor,fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()..onTap = () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                                    // single tapped
                                  },
                                ),

                              ]
                          )
                      ),


                      SizedBox(height: 30,),


                      Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: authButton(
                              width: 250,
                              color: favColor,
                              text: 'next',
                              press:(){})
                      ),



                    ],
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
