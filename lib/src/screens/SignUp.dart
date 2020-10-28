import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';
import 'package:kangy_flutter/src/screens/Otp.dart';
import 'package:kangy_flutter/src/screens/SignIn.dart';


import 'package:flutter/services.dart';
import 'package:kangy_flutter/src/packages/country.dart';
import 'package:diacritic/diacritic.dart';
import 'package:kangy_flutter/src/packages/flutter_country_picker.dart';

//Widget of SignScreen
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}



class _SignUpScreenState extends State<SignUpScreen> {

  static Country _selected;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;


    //Fuctions =================================================================



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
                          margin: EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              LogoSection(size),
                            ],
                          )
                      ),

                      MainContainer(size)

                    ] //children
                )
            )
        ) //body
    );

  }


  //Widget of Logo -------------------------------------------------------------
  Widget LogoSection(size) {
    return Container(
        width: size.height * (168 / 912),
        height: size.height * (168 / 1012),
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
        )
    );
  }

  Widget MainContainer(size, ) {
    return  Container(
        margin: EdgeInsets.only( left: size.width * (14.5 / 375), right: size.width * (14.5 / 375), bottom: 25),
        // padding: const EdgeInsets.only(right: 8.0, left: 8.0),
        height: 600, //size.height* 0.74,
        width: size.width * (345 / 375),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            border: Border.all(
                color: HexColor('#C88A3D'),
                width: 3.0
            )
        ),
        child: Container(
          decoration: new BoxDecoration(borderRadius:
          BorderRadius.circular(40.0),
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
                        child: Text("Your Name", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20, fontFamily: "Biko"),)
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

              //Phone Number Area ==============================================
              // Padding(
              //   padding: EdgeInsets.only(left: 10,right: 10, top: 20, bottom: 10),
              //   child: Column(
              //     children: [
              //       Container(
              //           width: size.width*0.8,
              //           child: Text("Phone Number", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20),)
              //       ),
              //       Container(
              //         child: TextFormField(
              //           obscureText: false,
              //           style: TextStyle(color: HexColor("#C88A3D")),
              //           keyboardType: TextInputType.phone,
              //           decoration: InputDecoration(
              //             prefixIcon: Icon(
              //               Icons.smartphone,
              //               size: 32,
              //               color: HexColor("#CA8E43"),
              //             ),
              //             suffixIcon: Icon(
              //               Icons.check,
              //               size: 32,
              //               color: HexColor("#CA8E43"),
              //             ),
              //             enabledBorder: UnderlineInputBorder(
              //                 borderSide: new BorderSide( color: HexColor("#CA8E43"))),
              //             hintStyle: new TextStyle(
              //               inherit: true,
              //               fontSize: 18.0,
              //               fontFamily: "Biko",
              //               color: HexColor("#CA8E43"),
              //             ),
              //             // hintText: "+ 187 9879 9079"
              //           ),
              //           onSaved: (String val) {},
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10, top: 20, bottom: 10),
                child: Column(
                  children: [
                    Container(
                        width: size.width*0.8,
                        child: Text("Phone Number", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20),)
                    ),



                    Container(
                        margin:  EdgeInsets.only(top: 8),

                      child: Row (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                                  Container(
                                    width: 105,
                                    margin:  EdgeInsets.only(left: 10),

                                      child: CountryPicker(
                                        dense: false,
                                        showFlag: true,        //displays flag, true by default
                                        showDialingCode: true, //displays dialing code, false by default
                                        showName: false,        //displays country name, true by default
                                        showCurrency: false,   //eg. 'British pound' -> 'GBP'

                                        onChanged: (Country country) {
                                          setState(() {
                                            _selected = country;
                                          });
                                        },
                                        selectedCountry: _selected,
                                      ),
                                  ),


                                  Container(
                                        // margin: ,
                                        width: size.width * 0.8 - 105,

                                        child: TextFormField(
                                          obscureText: false,
                                          style: TextStyle(color: HexColor("#C88A3D")),
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
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
                                            // hintText: "+ 187 9879 9079"
                                          ),
                                          onSaved: (String val) {},
                                        ),
                                  ),
                          ]
                      )
                    ),



                  ],
                ),
              ),

              //E-mail Area ====================================================
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10, top: 20, bottom: 10),
                child: Column(
                  children: [
                    Container(
                        width: size.width*0.8,
                        child: Text("E-Mail", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20, fontFamily: "Biko"),)
                    ),
                    Container(
                      child: TextFormField(
                        obscureText: false,
                        style: TextStyle(color: HexColor("#C88A3D")),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail_outline,
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
                padding: EdgeInsets.only(left: 10,right: 10, top: 20, bottom: 35),
                child: Column(
                  children: [
                    Container(
                        width: size.width*0.8,
                        child: Text("Password", style: TextStyle(color: HexColor("#C88A3D"),fontSize: 20, fontFamily: "Biko"),)
                    ),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(color: HexColor("#C88A3D")),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
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

              Center(
                child:  GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new OtpScreen(),
                    ),
                  ),
                  child: Container(
                      height: 50,
                      width: 280,
                      // padding: EdgeInsets.only(top:15, left:10, right:15, bottom: 15),
                      // margin: EdgeInsets.only(top:20, left: size.width*0.15, right: size.width*0.15, bottom: 0),
                      decoration: BoxDecoration(
                        color: HexColor("#30D5C8"),
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child:Center(
                        child: Text(
                          "Create Account",
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
                      "Already have an Account? ",
                      style: TextStyle(
                          fontSize: 18,
                          color:HexColor("#26A3AF"),
                          fontFamily: 'Biko'),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new SignInScreen(),
                        ),
                      ),
                      child:  Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 18,
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
    );
  }



}
