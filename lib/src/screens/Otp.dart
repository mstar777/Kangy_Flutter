// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';
import 'package:kangy_flutter/src/packages/verification_code_input.dart';
import 'package:kangy_flutter/src/screens/tab/App_Tab.dart';





//Widget of SignScreen
class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}



class _OtpScreenState extends State<OtpScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    String _onCompleted = "";

    return Scaffold(
        backgroundColor: Colors.white,

        body: Container(
        margin: EdgeInsets.only(top: 24, right: 0, left: 0, bottom: 0),
        height: size.height - 24,

                    child: SingleChildScrollView(
                        child: Column(
                            children: [

                              //Top Area for Logo
                              Container(
                                margin:  EdgeInsets.only(top: 120, right: 0, left: 0, bottom: 0),
                                height: 55,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Text("Getting Started",
                                          style: TextStyle(fontSize: 24,
                                              color: HexColor('#119AA8'),
                                              fontFamily: 'Biko',
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),

                                        Text("Create an account to continued",
                                          style: TextStyle(fontSize: 16,
                                              color: HexColor('#119AA8'),
                                              fontFamily: 'Biko',
                                              fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.center,
                                        )
                                      ]
                                  )
                              ),


                              //Middle Area for Email and Password

                              Container(
                                  margin: EdgeInsets.only(top:50, left: size.width * (14.5 / 375), right: size.width * (14.5 / 375), bottom: 0),
                                  // padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                                  height: 280,
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
                                          margin: EdgeInsets.only(top: 35, bottom: 30),
                                          child: Center(
                                            child: Text("Enter Your Pin", style: TextStyle(color: HexColor("#119AA8"),fontSize: 18,fontWeight: FontWeight.normal),),
                                          ),
                                        ),

                                        VerificationCodeInput(
                                          keyboardType: TextInputType.number,
                                          length: 4,
                                          autofocus: false,
                                          onCompleted: (String value) {
                                            print(value);
                                            setState(() {
                                              _onCompleted = value;
                                            });
                                          },
                                        ),

                                        (_onCompleted != "")
                                            ? Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          // child: Center(
                                          //   child: Text(
                                          //     'Your code: $_onCompleted',
                                          //   ),
                                          // ),
                                        )
                                            : Container(),

                                        Padding(
                                          padding: const EdgeInsets.all(15),
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
                                                    "Verify Pin",
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



                                      ],
                                    ),

                                  )
                              ),




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
