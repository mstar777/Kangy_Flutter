import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';

import 'package:kangy_flutter/src/packages/NamedIcon.dart';
import 'package:kangy_flutter/src/Constants/AppConfig.dart';

import 'dart:math';



//Widget of SignScreen
class MyActivitiesScreen extends StatefulWidget {
  @override
  _MyActivitiesScreenState createState() => _MyActivitiesScreenState();
}


class _MyActivitiesScreenState extends State<MyActivitiesScreen> {

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

            // padding: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 10),

            // Container(
            //     color: Colors.lightGreen,
            // margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 0),
            // // padding : EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
            // // height: size.height/2,
            // width: double.infinity,
            // height: size.height - 84, //24 + 10 + 30 + 20

            child: SingleChildScrollView(
                child: Column(
                    children: [


                      Container(
                          height: size.height - 24 - 60,
                          // margin: EdgeInsets.only(top: 40),
                          // color: Colors.red,

                          child: Column(
                            children: [
                              TitleSection(size),                               //70

                              LogoSection(size),

                            ],
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
        width: size.height * 0.75,
        height: size.height -24 - 60 - 70,
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/act.png',
          fit: BoxFit.contain,
        )
    );
  }

  //Widget of Title ------------------------------------------------------------
  Widget TitleSection(size) {

    return Container(
        height: 70,
        alignment: Alignment.center,
        color: HexColor("#C88A3D"),

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [


            Container(
              // color: Colors.red,
                width: size.width - 40,
                height: 70,
                // margin:  EdgeInsets.only(left: 20, right: 20),

                child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [

                      Container(
                        width: 36,
                        height: 36,
                        // color: Colors.green,
                        margin:  EdgeInsets.only(top: 20, bottom: 10),

                        child: CircleAvatar(
                          radius: 36.0,
                          // backgroundImage: NetworkImage('https://via.placeholder.com/8'),
                          backgroundImage: AssetImage('assets/icons/avatar.png'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),

                      Container(
                          width: size.width - 40 - 36 - 40 - 60,
                          height: 36,
                          // color: Colors.green,
                          margin:  EdgeInsets.only(top: 20, bottom: 10),

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [

                                Container(
                                  margin: EdgeInsets.only(left: 20,),
                                  alignment: Alignment.centerLeft,

                                  child: Text("Your Location",
                                    style: TextStyle(fontSize: 12,
                                        color: Colors.white,
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                  ),
                                ),

                                Container(
                                    height: 20,

                                    child: Row (
                                        mainAxisAlignment: MainAxisAlignment.start,

                                        children: [
                                          Container(
                                            width: 15,
                                            alignment: Alignment.centerLeft,
                                            child: Icon(
                                              Icons.location_pin,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            width: size.width - 40 - 36 - 60 - 40 - 20,
                                            // color: Colors.blue,

                                            child: Text("Copenhagen, Denmar kDen mark DenmarkDenmarkDenmark",
                                              style: TextStyle(fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: 'Biko',
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.left,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                        ]
                                    )
                                ),

                              ]
                          )
                      ),

                      Container(
                        width: 60,
                        height: 60,
                        // color: Colors.green,
                        margin:  EdgeInsets.only(top: 20, bottom: 0),

                        child: NamedIcon(
                          text: '',
                          // iconData: Icons.notifications_outlined,
                          iconData: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 26,
                          ),
                          notificationCount: 2,
                          onTap: () {},
                        ),
                      ),



                    ]
                )
            ),

          ],
        )


    );
  }



}
