import 'package:flutter/material.dart';
import 'dart:async';

import 'package:kangy/src/Constants/HexColor.dart';

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


      body: Container(
        margin: EdgeInsets.only(top: size.height/20),
        padding: EdgeInsets.only(top: 30, left: 20,right: 20),

        child: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.png",),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: size.height/1.6),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Container(

                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black12,
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black26,
                        decorationColor: Colors.black26,
                        fontFamily: 'Montserrat',
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.black,
                        hintStyle: TextStyle(color: Colors.black38),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.transparent, width: 0.0),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.transparent, width: 0.0),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        hintText: 'Type an address or Zip code',
                        labelStyle: TextStyle(color: Colors.black26),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Colors.black26,size: 35,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black26,size: 35,
                        ),
                      ),
                    ),
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
                    padding: EdgeInsets.only(top:15, left:10, right:15, bottom: 15),
                      margin: EdgeInsets.only(top:10,left: 60, right: 60,bottom: 40),
                      decoration: BoxDecoration(
                        color: HexColor("#047681"),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child:Center(
                      child: Text(
                        "Use my current location",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Righteous'),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create Account ",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black38,
                            fontFamily: 'Righteous'),
                        textAlign: TextAlign.center,
                      ),

                      Text(
                        "Let's Go ",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black38,
                            fontFamily: 'Righteous'),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),






    );
  }

  //Widget of Above logo Image -------------------------------------------------
  Widget logo(size) {
    return Positioned(
        top: size.height / 18,
        right: size.width / 2.2,
        child: Image.asset(
          'assets/images/logo.png',
          scale: 40,
        ));
  }
}
