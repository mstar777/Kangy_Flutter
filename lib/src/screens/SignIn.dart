// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';
import 'package:kangy_flutter/src/screens/SignUp.dart';

import 'package:kangy_flutter/src/screens/tab/App_Tab.dart';





//Widget of SignScreen
class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}



class _SignInScreenState extends State<SignInScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: HexColor('#e9f2f2'),

        body: Container(
        margin: EdgeInsets.only(top: 24, right: 0, left: 0, bottom: 0),
        height: size.height - 24,

                    child: SingleChildScrollView(
                        child: Column(
                            children: [

                              //Top Area for Logo
                              Container(
                                  height: size.height * (168 / 812),
                                  // color: Colors.red,
                                  margin: EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: [
                                      LogoSection(size),
                                    ],
                                  )
                              ),

                              //Middle Area for Email and Password
                              Container(
                                  margin: EdgeInsets.only(top:10, left: size.width * (14.5 / 375), right: size.width * (14.5 / 375), bottom: 0),
                                  // padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                                  height: 390,
                                  width: size.width * (345 / 375),

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                          color: HexColor('#C88A3D'),
                                          width: 3.0
                                      )
                                  ),
                                  child: Container(
                                    decoration: new BoxDecoration(borderRadius:
                                    BorderRadius.circular(20.0),
                                      color: Colors.white,),

                                    child: Column(
                                      children: [

                                        Container(
                                          margin: EdgeInsets.only(top: 15),
                                          child: Center(
                                            child: Text("Login Your Account", style: TextStyle(color: HexColor("#119AA8"),fontSize: 24,fontWeight: FontWeight.bold),),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 10,right: 10, top: 30, bottom: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                  width: size.width*0.8,
                                                  child: Text("Username or E-Mail", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20, fontFamily: "Biko"),)
                                              ),
                                              Container(
                                                child: TextFormField(
                                                  obscureText: false,
                                                  style: TextStyle(color: HexColor("#C88A3D")),
                                                  keyboardType: TextInputType.text,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Icon(
                                                      Icons.person_outline,
                                                      size: 32,
                                                      color: HexColor("#CA8E43"),
                                                    ),
                                                    suffixIcon: Icon(
                                                      Icons.check,
                                                      size: 32,
                                                      color: HexColor("#CA8E43"),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                        borderSide: new BorderSide( color: HexColor("#CA8E43"))),
                                                    hintStyle: new TextStyle(
                                                      inherit: true,
                                                      fontSize: 18.0,
                                                      fontFamily: "Biko",
                                                      color: HexColor("#CA8E43"),
                                                    ),
                                                  ),
                                                  onSaved: (String val) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 10,right: 10, top: 20, bottom: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                  width: size.width*0.8,
                                                  child: Text("Password", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20),)
                                              ),
                                              Container(
                                                child: TextFormField(
                                                  obscureText: false,
                                                  style: TextStyle(color: HexColor("#C88A3D")),
                                                  keyboardType: TextInputType.text,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Icon(
                                                      Icons.smartphone,
                                                      size: 32,
                                                      color: HexColor("#CA8E43"),
                                                    ),
                                                    suffixIcon: Icon(
                                                      Icons.check,
                                                      size: 32,
                                                      color: HexColor("#CA8E43"),
                                                    ),
                                                    // suffixText: Text("Password", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20),)
                                                    enabledBorder: UnderlineInputBorder(
                                                        borderSide: new BorderSide( color: HexColor("#CA8E43"))),
                                                    hintStyle: new TextStyle(
                                                      inherit: true,
                                                      fontSize: 18.0,
                                                      fontFamily: "WorkSansLight",
                                                      color: HexColor("#CA8E43"),
                                                    ),
                                                    // hintText: "+ 187 9879 9079"
                                                  ),
                                                  onSaved: (String val) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Center(
                                          child:  GestureDetector(
                                            onTap: () => Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                builder: (context) => new AppTab(),
                                              ),
                                            ),
                                            child: Container(
                                                height: 52,
                                                width: 280,
                                                padding: EdgeInsets.only(top:15, left:10, right:10, bottom: 15),
                                                margin: EdgeInsets.only(top:20, left: size.width*0.15, right: size.width*0.15, bottom: 0),
                                                decoration: BoxDecoration(
                                                  color: HexColor("#047681"),
                                                  borderRadius: BorderRadius.circular(38),
                                                ),
                                                child:Center(
                                                  child: Text(
                                                    "Login",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontFamily: 'Biko'),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          width: size.width* 0.8,
                                          child:  Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Don’t have an account?",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color:HexColor("#26A3AF"),
                                                    fontFamily: 'Biko'),
                                              ),
                                              GestureDetector(
                                                onTap: () => Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(
                                                    builder: (context) => new SignUpScreen(),
                                                  ),
                                                ),
                                                child:  Text(
                                                  "  Sign Up",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: HexColor("#C88A3D"),
                                                      fontFamily: 'Biko'),
                                                ),
                                              )

                                            ],
                                          ),
                                        )

                                      ],
                                    ),

                                  )
                              ),

                              //Bottom Area for Buttons of fb, google
                              Container(

                                  margin: EdgeInsets.only(top:30, left: size.width * (15 / 375), right: size.width * (15 / 375), bottom: 0),
                                  height: 50,
                                  width: size.width * (335 / 375),
                                  // color: Colors.red,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                          Container(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                              GestureDetector(
                                                                onTap: () => Navigator.pushReplacement(
                                                                  context,
                                                                  new MaterialPageRoute(
                                                                    // builder: (context) => new Signup(),
                                                                  ),
                                                                ),
                                                                child: Container(
                                                                    height: 46,
                                                                    width: 160,
                                                                    // padding: EdgeInsets.only(top:15, left:10, right:15, bottom: 15),
                                                                    // margin: EdgeInsets.only(top:20, left: size.width*0.15, right: size.width*0.15, bottom: 0),
                                                                    decoration: BoxDecoration(
                                                                      color: HexColor("#3B5998"),
                                                                      borderRadius: BorderRadius.circular(23),
                                                                    ),
                                                                    child:Center(
                                                                      child: Text(
                                                                        "Log in with Facebook",
                                                                        style: TextStyle(
                                                                            fontSize: 14,
                                                                            color: Colors.white,
                                                                            fontFamily: 'Biko'),
                                                                        textAlign: TextAlign.center,
                                                                      ),
                                                                    )
                                                                ),
                                                              ),

                                                              GestureDetector(
                                                                onTap: () => Navigator.pushReplacement(
                                                                  context,
                                                                  new MaterialPageRoute(
                                                                    // builder: (context) => new Signup(),
                                                                  ),
                                                                ),
                                                                child: Container(
                                                                    height: 46,
                                                                    width: 155,
                                                                    // padding: EdgeInsets.only(top:15, left:10, right:15, bottom: 15),
                                                                    // margin: EdgeInsets.only(top:20, left: 0, right: 0, bottom: 0),
                                                                    decoration: BoxDecoration(
                                                                      color: HexColor("#DB4A39"),
                                                                      borderRadius: BorderRadius.circular(23),
                                                                    ),
                                                                    child:Center(
                                                                      child: Text(
                                                                        "Log in with Google",
                                                                        style: TextStyle(
                                                                            fontSize: 14,
                                                                            color: Colors.white,
                                                                            fontFamily: 'Biko'),
                                                                        textAlign: TextAlign.center,
                                                                      ),
                                                                    )
                                                                ),
                                                              ),

                                                ],
                                              ),
                                          )
                                      ]
                                  )
                              ),


                              // ZipCodeSection(),

                              // GestureDetector(
                              //   onTap: () => Navigator.pushReplacement(
                              //     context,
                              //     new MaterialPageRoute(
                              //       // builder: (context) => new Signup(),
                              //     ),
                              //   ),
                              //   child: Container(
                              //       height: 50,
                              //       // padding: EdgeInsets.only(top:15, left:10, right:15, bottom: 15),
                              //       margin: EdgeInsets.only(top:20, left: size.width*0.15, right: size.width*0.15, bottom: 0),
                              //       decoration: BoxDecoration(
                              //         color: HexColor("#047681"),
                              //         borderRadius: BorderRadius.circular(25),
                              //       ),
                              //       child:Center(
                              //         child: Text(
                              //           "Use my current location",
                              //           style: TextStyle(
                              //               fontSize: 20,
                              //               color: Colors.white,
                              //               fontFamily: 'Biko'),
                              //           textAlign: TextAlign.center,
                              //         ),
                              //       )
                              //   ),
                              // ),

                              // Container(
                              //     // color: Colors.red,
                              //     margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 30),
                              //     // padding : EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
                              //     // height: size.height/2,
                              //     width: double.infinity,
                              //     height: 30,
                              //
                              //     child: Column (
                              //         children: [
                              //           //"Create Account", "Let's Go"
                              //           Container(
                              //             margin:  EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
                              //             height: 30,
                              //
                              //             child: Column (
                              //               children: [
                              //                 Container(
                              //                   child: Row(
                              //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //                     children: [
                              //                       Text(
                              //                         "Create Account ",
                              //                         style: TextStyle(
                              //                             fontSize: 22,
                              //                             color: Colors.black38,
                              //                             fontFamily: 'Biko'),
                              //                         textAlign: TextAlign.center,
                              //                       ),
                              //
                              //                       Text(
                              //                         "Let's Go ",
                              //                         style: TextStyle(
                              //                             fontSize: 22,
                              //                             color: Colors.black38,
                              //                             fontFamily: 'Biko'),
                              //                         textAlign: TextAlign.center,
                              //                       ),
                              //                     ],
                              //                   ),
                              //                 )
                              //               ],
                              //             ),
                              //           ),
                              //         ]
                              //     )
                              // ),

                            ] //children
                        )
                    )
                // ),








        ) //body






    );
  }


  //Widget of Logo -------------------------------------------------------------
  Widget LogoSection(size) {
    return Container(
        width: size.height * (168 / 812),
        height: size.height * (168 / 812),
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
        )
    );
  }


  Widget ZipCodeSection() {
    return Container(
      // margin: ,
      height: 106,
      child: Row(
        children: [
          Expanded(
            child: Column(

              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                    margin:  EdgeInsets.only(top: 30, right: 0, left: 0, bottom: 0),
                    height: 20,
                    child: Column(
                        children: [
                          Text("let's search for kid activities nearby",
                            style: TextStyle(fontSize: 15,
                                color: HexColor('#C88A3D'),
                                fontFamily: 'Biko',
                            ),
                            // textAlign: TextAlign.center,
                          ),
                        ]
                    )
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0), //left, top, right, bottom

                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black12,
                    ),

                    child: TextFormField(
                      style: TextStyle(
                        // color: HexColor('#C88A3D'),
                        decorationColor: Colors.black54,
                        // decoration: TextDecoration.none,
                        fontFamily: 'Biko',
                        fontSize: 15
                      ),

                      decoration: InputDecoration(

                        // fillColor: Colors.red,
                        // hintStyle: TextStyle(color: Colors.black38),
                        // focusedBorder: OutlineInputBorder(
                        //     borderSide:
                        //     BorderSide(color: Colors.transparent, width: 0.0),
                        //     borderRadius: BorderRadius.circular(5)
                        // ),

                        // enabledBorder: OutlineInputBorder(
                        //     borderSide:
                        //     BorderSide(color: Colors.transparent, width: 0.0),
                        //     borderRadius: BorderRadius.circular(15)
                        // ),

                        hintText: 'Type an address or Zip code',
                        labelStyle: TextStyle(color: Colors.black26),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black26,
                          size: 26,
                        ),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Colors.black26,
                          size: 26,
                        ),
                      ),


                    ),
                  ),


                ),
              ],
            ),
          ),
        ],
      ),

    );
  }

  //Widget of Bottom------------------------------------------------------------

  // Widget picture(size) {
  //   return Container(
  //     height: size.height / 2.5,
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //           image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
  //     ),
  //     child: Container(
  //       color: Colors.black.withOpacity(.3),
  //     ),
  //   );
  // }



}
