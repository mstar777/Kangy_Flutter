import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';

// import 'package:provider/provider.dart';

import 'package:kangy_flutter/src/packages/NamedIcon.dart';
import 'package:kangy_flutter/src/Constants/AppConfig.dart';

import 'dart:math';



//Widget of SignScreen
class ActivityBasketScreen extends StatefulWidget {
  @override
  _ActivityBasketScreenState createState() => _ActivityBasketScreenState();
}


class _ActivityBasketScreenState extends State<ActivityBasketScreen> {

  AppConfig _appConfig;
  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  static List<String> links = [
    "https://i.pinimg.com/originals/cc/18/8c/cc188c604e58cffd36e1d183c7198d21.jpg",
    "https://www.kyoceradocumentsolutions.be/blog/wp-content/uploads/2019/03/iStock-881331810.jpg",
    "https://resources.matcha-jp.com/resize/720x2000/2020/04/23-101958.jpeg"
  ];

  static const Color orange1 = Color(0xFFFF7200);
  static const Color orange2 = Color(0xFFFF7104);
  static const Color orange3 = Color(0xFFFac695);

  String filter;
  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
  }



  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    _appConfig = new AppConfig(context);



    List<Widget> _pages  = <Widget> [

      new ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        // child:GestureDetector(
        //   onTap:() {Navigator.of(context)
        //       // .push(MaterialPageRoute(builder: (context) => PubDetail()));},
        //   child: Container(
        //       height: _appConfig.rH(30),
        //       margin: const EdgeInsets.all(15.0),
        //       // padding: const EdgeInsets.all(10.0),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.all(Radius.circular(20)),
        //         border: Border.all(
        //             width: 7, //
        //             color: HexColor("#9b1010")
        //         ),
        //       ), //       <--- BoxDecoration here
        //       child:Container(
        //           width: _appConfig.rW(90),
        //           height: _appConfig.rH(30),
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(20),
        //               color: Colors.white
        //           ),
        //           child:  Center(
        //             child: Text(
        //               "Pub Ads",
        //               style: TextStyle(fontSize: 60.0, color:  HexColor("#a4a4a4"), fontWeight: FontWeight.bold),
        //             ),
        //           )
        //       )
        //   ),
        // )

        // child: Image.asset("assets/images/child1.png" , height: size.height/20, width:size.width/1.2 ,)
        child: Image.network(
          links[0],
          fit: BoxFit.fill,
          loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null ?
                loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                    : null,
              ),
            );
          },
        ),

      ),

      new ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        // child: Image.asset("assets/icons/avatar.png" ,height: size.height/20,width:size.width/1.2 ,)
        child: Image.network(
          links[1],
          fit: BoxFit.fill,
          loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null ?
                loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                    : null,
              ),
            );
          },
        ),
      ),

      new ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        // child: Image.asset("assets/icons/avatar.png" ,height: size.height/20,width:size.width/1.2 ,)
        child: Image.network(
          links[2],
          fit: BoxFit.fill,
          loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null ?
                loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                    : null,
              ),
            );
          },
        ),
      ),

    ];






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
            color: Colors.white,

            // padding: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 10),
            // Container(
            // color: Colors.lightGreen,
            // margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 0),
            // padding : EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
            // height: size.height/2,
            // width: double.infinity,
            // height: size.height - 84, //24 + 10 + 30 + 20

            child: SingleChildScrollView(
              // scrollDirection: Axis.vertical,

                child: Column(
                    children: [


                      Container(
                          // height: size.height - 24 - 60,
                          height: 1.0 + 70 + 20 + 222 + 20 + 70 + 20 + 246 + 20 + 50 + 20,
                          // margin: EdgeInsets.only(top: 40),
                          // color: Colors.red,

                          child: Column(
                            children: [
                              TitleSection(size),                               //70

                              KidsCookingSection(size),                         //20 + 222

                              SearchSection(size),                              //20 + 70

                              PriceDetailSection(size),                         //20 + 209

                              RegisterButtonSection(size),                      //20 + 50 + 20


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
        width: size.height * (262 / 812),
        height: size.height * (262 / 812),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
        )
    );
  }

  //Widget of Title ------------------------------------------------------------
  Widget TitleSection(size) {

    return Container(
        height: 70,
        alignment: Alignment.center,
        // color:  Colors.transparent ,
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

  //Widget of "Flour Power Kids Cooking" ---------------------------------------
  Widget KidsCookingSection(size) {
    return Container(
        margin: EdgeInsets.only(top:20, left: 20, right: 20),
        height: 222,
        alignment: Alignment.center,
        // color: Colors.red,


        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
                color: Colors.grey,
                width: 1.0
            )
        ),
        child: Container(
          decoration: new BoxDecoration(borderRadius:
          BorderRadius.circular(8.0),
            color: Colors.white,),

          child: Column(
            children: [

              //Schedule Area --------------------------------------------------
              Container(
                margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                height: 53,
                // color: Colors.red,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      // width: 254,
                      // color: Colors.red,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Picture Area ---------------------------------------
                          Container(
                            height: 53,
                            width: 56,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0
                                )
                            ),
                            child: Container(
                              // width: 40,
                              // height: 30,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/none_pic.png',
                                  width: 40,
                                  height: 30,
                                  fit: BoxFit.contain,
                                )
                            ),
                          ),

                          //"Flour Power Kids Cooking", "Aug 15 - Sep 05, 2020", "09:00 Pm - 10:00 Pm"
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 1),
                            // width: 190,
                            // color: Colors.green,
                            alignment: Alignment.centerLeft,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //"Flour Power Kids Cooking" -----------------------
                                  Container(
                                    margin: EdgeInsets.only(top: 0, left: 0),
                                    // color: Colors.red,
                                    child: Row (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Flour Power Kids Cooking",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: HexColor("#CE543D"),
                                                fontFamily: 'Biko',
                                                fontWeight: FontWeight.bold
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //"Aug 15 - Sep 05, 2020" --------------------------
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Column (
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Aug 15 - Sep 05, 2020",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: HexColor("#666666"),
                                                  fontFamily: 'Biko',
                                                  // fontWeight: FontWeight.bold
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //"09:00 Pm - 10:00 Pm" ----------------------------
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Column (
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                '09:00 Pm - 10:00 Pm',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: HexColor("#666666"),
                                                  fontFamily: 'Biko',
                                                  // fontWeight: FontWeight.bold
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),

                    //"Price: $75.0" -------------------------------------------
                    Container(
                      // width: 120,
                      // color: Colors.red,
                      margin: EdgeInsets.only(top: 3),
                        alignment: Alignment.topRight,
                        child: Container(
                          // color: Colors.red,
                          child: Text(
                            'Price : \$75.0',
                            style: TextStyle(
                              fontSize: 12,
                              color: HexColor("#666666"),
                              fontFamily: 'Biko',
                              // fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                    ),

                  ],
                ),
              ),

              //Child Name -----------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 72, top: 8, right: 0),
                    height: 50.0,
                    child: new Container(
                        decoration: new BoxDecoration(
                            color: HexColor("#C88A3D"),
                            borderRadius: new BorderRadius.all(const Radius.circular(5.0))
                        ),

                        child: new Container(
                            height: 40,
                            alignment: Alignment.centerLeft,
                            child: Row (
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin:  EdgeInsets.only(left: 12, top: 5, bottom: 5),


                                    child: CircleAvatar(
                                      radius: 36.0,
                                      // backgroundImage: NetworkImage('https://via.placeholder.com/8'),
                                      backgroundImage: AssetImage('assets/icons/avatar.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),

                                  Container(
                                    height: 40,
                                    // color: Colors.green,
                                    margin:  EdgeInsets.only(left: 8, right: 12),
                                    alignment: Alignment.centerLeft,

                                    child: Text("Child Name",
                                      style: TextStyle(fontSize: 12,
                                          color: Colors.white,
                                          fontFamily: 'Biko',
                                          fontWeight: FontWeight.normal),
                                      textAlign: TextAlign.end,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),

                                ]
                            )
                        )

                    ),
                  ),
                ],
              ),

              //Days -----------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 72, top: 8, right: 0),
                    height: 32.0,
                    // width: 200,
                    // color: Colors.red,

                    //S, M, T, W, T, F, S
                    child: Row(
                      children: [
                        Container(
                          height: 32.0,
                          width: 32.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "S",
                                      style: TextStyle(
                                        color: HexColor('#C88A3D'),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          margin: EdgeInsets.only(left: 8),

                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "M",
                                      style: TextStyle(
                                        color: HexColor('#C88A3D'),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          margin: EdgeInsets.only(left: 8),

                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "T",
                                      style: TextStyle(
                                        color: HexColor('#C88A3D'),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          margin: EdgeInsets.only(left: 8),

                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "W",
                                      style: TextStyle(
                                        color: HexColor('#C88A3D'),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          margin: EdgeInsets.only(left: 8),

                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "T",
                                      style: TextStyle(
                                        color: HexColor('#C88A3D'),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          margin: EdgeInsets.only(left: 8),

                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "F",
                                      style: TextStyle(
                                        color: HexColor('#C88A3D'),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          margin: EdgeInsets.only(left: 8),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  // color: Colors.grey,
                                  color: HexColor('#B68547'),
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                // color: Colors.transparent,
                                color: HexColor('#C88A3D'),
                                borderRadius: BorderRadius.circular(32.0),

                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "S",
                                      style: TextStyle(
                                        color: Colors.white,//HexColor('#C88A3D'),
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                        // backgroundColor: Colors.red
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),



                  )
                ]
              ),


              //"Edit", "Move to favorite", "Remove" ---------------------------
              Container(
                margin: EdgeInsets.only(top: 12),
                height: 1,
                color: Colors.grey,
              ),
              Container(
                height: 48,
                // color: Colors.grey,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      width: (size.width - 44) * 0.25,
                      height: 30,
                      // color: Colors.grey,
                      alignment: Alignment.center,
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontFamily: 'Biko'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 22,
                      color: Colors.grey,
                    ),
                    Container(
                      width: (size.width - 44) * 0.5,
                      height: 30,
                      // color: Colors.green,
                      alignment: Alignment.center,
                      child: Text(
                        "Move to Favorite",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontFamily: 'Biko'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 22,
                      color: Colors.grey,
                    ),
                    Container(
                      width: (size.width - 44) * 0.25,
                      height: 30,
                      // color: Colors.red,
                      alignment: Alignment.center,
                      child: Text(
                        "Remove",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontFamily: 'Biko'),
                        textAlign: TextAlign.center,
                      ),
                    ),



                  ],
                ),

              ),

            ],
          ),

        )

    );
  }

  //Widget of Search -----------------------------------------------------------
  Widget SearchSection(size) {
    return Container(

      margin:  EdgeInsets.only(top: 20, left: 20, right: 20),
      // alignment: Alignment.center,

      child: Column(
          children: <Widget>[

            new TextField(
              decoration: new InputDecoration(

                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(width: 1,color: HexColor("#C88A3D")),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(width: 1,)
                ),


                // hintText: MaterialLocalizations.of(context).searchFieldLabel,
                hintText: "Apply Coupon",

                // prefixIcon: Icon(Icons.search),
                // suffixIcon: filter == null || filter == ""
                //     ? Container(
                //   height: 0.0,
                //   width: 0.0,
                // )
                //     : InkWell(
                //   child: Icon(Icons.clear),
                //   onTap: () {
                //     controller.clear();
                //   },
                // ),
              ),

                style: TextStyle(
                    fontSize: 14.0,
                    // height: 2.0,
                    color: Colors.black
                )
              // controller: controller,
            ),

          ]
      ),
    );
  }

  //Widget of PriceDetail ------------------------------------------------------
  Widget PriceDetailSection(size) {
    return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        height: 246,
        alignment: Alignment.center,
        // color: Colors.red,


      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
              color: Colors.grey,
              width: 1.0
          )
      ),
      child: Container(
        decoration: new BoxDecoration(borderRadius:
        BorderRadius.circular(8.0),
          color: Colors.white,),

        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(left: 8),
              height: 48,
              // color: Colors.red,
              alignment: Alignment.centerLeft,

              child: Text(
                "Price Details",
                style: TextStyle(
                    fontSize: 14,
                    // color: Colors.grey,
                    color: HexColor('#404040'),
                    fontFamily: 'Biko'),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                height: 1,
                color: Colors.grey,
            ),

            Container(
              margin: EdgeInsets.only(top: 8),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "Total for all classes & activities :",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "\$\$\$",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "Booking fee :",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "\$\$\$",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "Promotion/discount :",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "\$\$\$",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "Est. Tax :",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "\$\$\$",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "Registration Total :",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 26,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "\$\$\$",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: 'Biko'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 8),
              height: 1,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              height: 48,
              // color: Colors.red,
              alignment: Alignment.centerLeft,

              child: Text(
                "Total Payable",
                style: TextStyle(
                    fontSize: 14,
                    color: HexColor('#404040'), //Colors.grey,
                    fontFamily: 'Biko'),
                textAlign: TextAlign.center,
              ),
            ),

          ]
        ),



      )

    );
  }

  //Widget of Register Button --------------------------------------------------
  Widget RegisterButtonSection(size) {
    return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        height: 50,
        alignment: Alignment.center,
        // color: Colors.grey,

        child: Column(
          children: [
            Center(
              child:  GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  new MaterialPageRoute(
                    // builder: (context) => new AppTab(),
                  ),
                ),
                child: Container(
                    height: 50,
                    // width: 280,
                    // padding: EdgeInsets.only(top:15, left:10, right:10, bottom: 15),
                    margin: EdgeInsets.only(left: 70, right: 70, bottom: 0),
                    decoration: BoxDecoration(
                      color: HexColor("#C88A3D"),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:Center(
                      child: Text(
                        "Register Now",
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



    );
  }

}