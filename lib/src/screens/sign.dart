import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';
import 'package:kangy_flutter/src/screens/SignIn.dart';
import 'package:kangy_flutter/src/screens/SignUp.dart';




//Widget of SignScreen
class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}



class _SignScreenState extends State<SignScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(title: Text("Sign"),
      // ),
      // backgroundColor: primaryColor,
        backgroundColor: Colors.white,
      //   backgroundColor: Colors.transparent,
      //   resizeToAvoidBottomPadding: false,



        body: Container(
        margin: EdgeInsets.only(top: 24, right: 0, left: 0, bottom: 0),
        height: size.height - 24,
        // color: Colors.red,

                  child: Container(
                    height: size.height - 24,
                    // color: Colors.green,

                      child: SingleChildScrollView(
                          child: Column(
                              children: [

                                Container(
                                ),

                                Container(
                                    height: size.height * (330 / 812), //size.height/2 - 100,
                                    margin: EdgeInsets.only(top: 40),
                                    // color: Colors.red,
                                    child: Column(
                                      children: [
                                        LogoSection(size),
                                      ],
                                    )
                                ),

                                Container(
                                  // margin:  EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
                                  // height: 77,
                                  // color: Colors.green,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        children: [
                                          Text("Hi there!",
                                            style: TextStyle(fontSize: 42,
                                                color: HexColor('#C88A3D'),
                                                fontFamily: 'Biko',
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),

                                          Text("Let's have some fun!",
                                            style: TextStyle(fontSize: 24,
                                                color: HexColor('#119AA8'),
                                                fontFamily: 'Biko',
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          )
                                        ]
                                    )
                                ),
                                ZipCodeSection(),
                                GestureDetector(
                                  // onTap: () => Navigator.pushReplacement(
                                  //   context,
                                  //   new MaterialPageRoute(
                                  //     builder: (context) => new SignInScreen(),
                                  //   ),

                                  onTap: () => Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new SignInScreen()
                                    ),
                                  ),
                                  child: Container(
                                      height: 50,
                                      // padding: EdgeInsets.only(top:15, left:10, right:15, bottom: 15),
                                      margin: EdgeInsets.only(top:20, left: size.width*0.15, right: size.width*0.15, bottom: 0),
                                      decoration: BoxDecoration(
                                        color: HexColor("#047681"),
                                        borderRadius: BorderRadius.circular(25),
                                      ),

                                      child:Center(
                                        child: Text(
                                          "Use my current location",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontFamily: 'Biko'),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),


                                Container(
                                    // color: Colors.red,
                                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20,
                                        top: size.height - 24 - (40 + 77 + 110 + 50 + size.height*0.41 + 180 - 110)
                                        // top: size.height - 24 - (40 + 77 + 110 + 50 + size.height*0.41) - 110 - 30
                                    ),
                                    width: double.infinity,
                                    height: 30,

                                    child: Column (
                                        children: [
                                          //"Create Account", "Let's Go" =========
                                          Container(
                                            // margin:  EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
                                            height: 30,

                                            child: Column (
                                              children: [
                                                Container(

                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () => Navigator.push(
                                                          context,
                                                          new MaterialPageRoute(
                                                              builder: (context) => new SignUpScreen()
                                                          ),
                                                        ),
                                                        child:  Text(
                                                          "Create Account ",
                                                          style: TextStyle(
                                                              fontSize: 22,
                                                              color: HexColor("#C88A3D"),
                                                              fontFamily: 'Biko'),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () => Navigator.push(
                                                          context,
                                                          new MaterialPageRoute(
                                                              builder: (context) => new SignInScreen()
                                                          ),
                                                        ),
                                                        child:  Text(
                                                          "Let's Go ",
                                                          style: TextStyle(
                                                              fontSize: 22,
                                                              color: HexColor("#C88A3D"),
                                                              fontFamily: 'Biko'),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ),

                                                    ],
                                                  ),


                                                )
                                              ],
                                            ),
                                          ),
                                        ]
                                    )
                                ),



                              ] //children
                          )
                      )


                  ),

        ) //body






    );
  }


  //Widget of Logo -------------------------------------------------------------
  Widget LogoSection(size) {
    return Container(
        width: size.height * (262 / 812),
        height: size.height * (262 / 812),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
        )
    );
  }


  Widget ZipCodeSection() {
    return Container(
      // margin: ,
      height: 110,
      // color: Colors.red,

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
                            style: TextStyle(fontSize: 16,
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
                    height: 50,
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
