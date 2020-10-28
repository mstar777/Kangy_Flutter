import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';


// import 'package:provider/provider.dart';

import 'package:kangy_flutter/src/packages/NamedIcon.dart';
import 'package:kangy_flutter/src/Constants/AppConfig.dart';

import 'dart:math';



//Widget of SignScreen
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}


class _SearchScreenState extends State<SearchScreen> {

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
                          height: 105 + 56 + 457 + 100 -35 - 100 + _appConfig.rH(64), //
                          // margin: EdgeInsets.only(top: 40),
                          // color: Colors.red,

                          child: Column(
                            children: [
                              TitleSection(size),                               //70

                              SearchSection(size),                              //30 + 70

                              CategoriesSection(size),                          //40+rH(16)

                              OnlineClassSection(size),                         //20+40+rH(16)+3+3+3+70

                              OurRecommendedSection(size),                      //20+40+rH(16)+3+3+3+70

                              CampSection(size),                                //20+40+rH(16)+3+3+3+70

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

  //Widget of Search -----------------------------------------------------------
  Widget SearchSection(size) {
    return Container(

      margin:  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
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


                  hintText: MaterialLocalizations.of(context).searchFieldLabel,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: filter == null || filter == ""
                      ? Container(
                    height: 0.0,
                    width: 0.0,
                  )
                      : InkWell(
                    child: Icon(Icons.clear),
                    onTap: () {
                      controller.clear();
                    },
                  ),
                ),

                controller: controller,
              ),




        ]
      ),
    );
  }

  //Widget of OnlineClass ------------------------------------------------------
  Widget CategoriesSection(size) {

    return Container(
        margin: EdgeInsets.only(top: 0, left: 20, right: 20),
        alignment: Alignment.center,
        // color: Colors.lightBlue,

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Container(
              // color: Colors.red,
              width: size.width - 40,
              height: 40,
              // margin:  EdgeInsets.only(left: 20, right: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        // builder: (context) => new SignUpScreen()
                      ),
                    ),
                    child:  Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 14,
                          color: HexColor("#047681"),
                          fontFamily: 'Biko', fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],
              ),
            ),

            Container(
              // color: Colors.green,
                width: size.width - 40,

                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: <Widget>[
                          imageSection0(context, size, orange2, orange3)
                        ]
                    )
                )

            ),



          ],
        )


    );
  }
  Widget imageSection0 (BuildContext context, Size size,orange2,orange3) {
    return Row(
      children: [

        //first cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Stack(
                  children: <Widget>[
                    Container(
                      // decoration: new BoxDecoration(
                      //   borderRadius: BorderRadius.circular(8.0),
                      //   color: Colors.red,
                      // ),

                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          // child: Image.network(
                          //   'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
                          //   width: _appConfig.rW(60),
                          //   height: _appConfig.rH(16),
                          //   fit: BoxFit.cover,
                          //   loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                          //     if (loadingProgress == null) return child;
                          //     return Center(
                          //       child: CircularProgressIndicator(
                          //         value: loadingProgress.expectedTotalBytes != null ?
                          //         loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                          //             : null,
                          //       ),
                          //     );
                          //   },
                          // ),
                          child: Image.asset("assets/images/child1.png" ,
                              width: _appConfig.rW(60),
                              height: _appConfig.rH(16),
                              fit: BoxFit.cover,
                          )
                      ),
                    ),

                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 10, bottom: 15),

                        child: Text(
                          "TC Artworks",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white, //HexColor("#C88A3D"),
                              fontFamily: 'Biko',
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                    ),
                  ],
                ),

              ),



            ],
          ),


        ),


        //Second cell ----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Stack(
                  children: <Widget>[
                    Container(
                      // decoration: new BoxDecoration(
                      //   borderRadius: BorderRadius.circular(8.0),
                      //   color: Colors.red,
                      // ),

                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          // child: Image.network(
                          //   'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
                          //   width: _appConfig.rW(60),
                          //   height: _appConfig.rH(16),
                          //   fit: BoxFit.cover,
                          //   loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                          //     if (loadingProgress == null) return child;
                          //     return Center(
                          //       child: CircularProgressIndicator(
                          //         value: loadingProgress.expectedTotalBytes != null ?
                          //         loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                          //             : null,
                          //       ),
                          //     );
                          //   },
                          // ),
                          child: Image.asset("assets/images/child2.png" ,
                            width: _appConfig.rW(60),
                            height: _appConfig.rH(16),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),

                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 10, bottom: 15),

                      child: Text(
                        "TC Artworks",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white, //HexColor("#C88A3D"),
                            fontFamily: 'Biko',
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),

              ),



            ],
          ),


        ),


        //3rd cell -------------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Stack(
                  children: <Widget>[
                    Container(
                      // decoration: new BoxDecoration(
                      //   borderRadius: BorderRadius.circular(8.0),
                      //   color: Colors.red,
                      // ),

                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          // child: Image.network(
                          //   'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
                          //   width: _appConfig.rW(60),
                          //   height: _appConfig.rH(16),
                          //   fit: BoxFit.cover,
                          //   loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                          //     if (loadingProgress == null) return child;
                          //     return Center(
                          //       child: CircularProgressIndicator(
                          //         value: loadingProgress.expectedTotalBytes != null ?
                          //         loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                          //             : null,
                          //       ),
                          //     );
                          //   },
                          // ),
                          child: Image.asset("assets/images/child3.png" ,
                            width: _appConfig.rW(60),
                            height: _appConfig.rH(16),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),

                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 10, bottom: 15),

                      child: Text(
                        "TC Artworks",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white, //HexColor("#C88A3D"),
                            fontFamily: 'Biko',
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),

              ),



            ],
          ),


        ),


      ],
    );
  }

  //Widget of OnlineClass ------------------------------------------------------
  Widget OnlineClassSection(size) {

    return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        alignment: Alignment.center,
        // color: Colors.lightBlue,

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Container(
              // color: Colors.red,
              width: size.width - 40,
              height: 40,
              // margin:  EdgeInsets.only(left: 20, right: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        // builder: (context) => new SignUpScreen()
                      ),
                    ),
                    child:  Text(
                      "Online Class",
                      style: TextStyle(
                          fontSize: 14,
                          color: HexColor("#C88A3D"),
                          fontFamily: 'Biko', fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        // builder: (context) => new SignInScreen()
                      ),
                    ),
                    child:  Text(
                      "See All(36)",
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor("#119AA8"),
                        fontFamily: 'Biko',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              // color: Colors.green,
                width: size.width - 40,

                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: <Widget>[
                          imageSection1(context, size, orange2, orange3)
                        ]
                    )
                )

            ),



          ],
        )


    );
  }
  Widget imageSection1 (BuildContext context, Size size,orange2,orange3) {
    return Row(
      children: [

        //first cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child1.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#C88A3D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )


            ],
          ),


        ),


        //Second cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child2.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#C88A3D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )


            ],
          ),


        ),


        //3rd cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child3.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#C88A3D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )


            ],
          ),


        ),
        // Container(
        //   margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
        //   width: 120,
        //   height: 150,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     gradient: LinearGradient(colors: [orange2, orange3],
        //       begin: Alignment.bottomCenter,
        //       end: Alignment.center,),
        //     color: orange2,
        //   ),
        //   child: Column(
        //     children: [
        //       Image.asset('assets/goaur/food/food2.png', width: 120,
        //         height: 110,
        //         fit: BoxFit.cover,),
        //       Container(
        //           padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
        //           child: Text("Rice and Delight",
        //             style: TextStyle(fontSize: 12, color: Colors.white),))
        //     ],
        //
        //   ),
        // ),


      ],
    );
  }

  //Widget of Our Recommended --------------------------------------------------
  Widget OurRecommendedSection(size) {

    return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        alignment: Alignment.center,
        // color: Colors.lightBlue,

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Container(
              // color: Colors.red,
              width: size.width - 40,
              height: 40,
              // margin:  EdgeInsets.only(left: 20, right: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        // builder: (context) => new SignUpScreen()
                      ),
                    ),
                    child:  Text(
                      "Our Recommended",
                      style: TextStyle(
                          fontSize: 14,
                          color: HexColor("#CE543D"),
                          fontFamily: 'Biko', fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        // builder: (context) => new SignInScreen()
                      ),
                    ),
                    child:  Text(
                      "See All(36)",
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor("#119AA8"),
                        fontFamily: 'Biko',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              // color: Colors.green,
                width: size.width - 40,

                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: <Widget>[
                          imageSection2(context, size, orange2, orange3)
                        ]
                    )
                )

            ),



          ],
        )


    );
  }
  Widget imageSection2 (BuildContext context, Size size,orange2,orange3) {
    return Row(
      children: [

        //first cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child1.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#CE543D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )

            ],
          ),


        ),


        //Second cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child2.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#CE543D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )

            ],
          ),


        ),


        //3rd cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child3.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#CE543D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )

            ],
          ),


        ),



      ],
    );
  }

  //Widget of Our Camp ---------------------------------------------------------
  Widget CampSection(size) {

    return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        alignment: Alignment.center,
        // color: Colors.lightBlue,

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Container(
              // color: Colors.red,
              width: size.width - 40,
              height: 40,
              // margin:  EdgeInsets.only(left: 20, right: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        // builder: (context) => new SignUpScreen()
                      ),
                    ),
                    child:  Text(
                      "Camp",
                      style: TextStyle(
                          fontSize: 14,
                          color: HexColor("#FF4C6C"),
                          fontFamily: 'Biko', fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        // builder: (context) => new SignInScreen()
                      ),
                    ),
                    child:  Text(
                      "See All(36)",
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor("#119AA8"),
                        fontFamily: 'Biko',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              // color: Colors.green,
                width: size.width - 40,

                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: <Widget>[
                          imageSection3(context, size, orange2, orange3)
                        ]
                    )
                )

            ),



          ],
        )


    );
  }
  Widget imageSection3 (BuildContext context, Size size,orange2,orange3) {
    return Row(
      children: [

        //first cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child1.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#FF4C6C"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )

            ],
          ),


        ),


        //Second cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child2.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#FF4C6C"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )

            ],
          ),


        ),


        //3rd cell -----------------------------------------------------------
        Container(
          margin: EdgeInsets.only(right: 20),
          width: _appConfig.rW(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // gradient: LinearGradient(
            //       colors: [orange2, orange3],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.center,
            //     ),
            //   color: orange2,
          ),



          child: Column (
            children: [

              //image --------------------------------------------------------
              Container(
                width: _appConfig.rW(60),
                height: _appConfig.rH(16),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/child3.png',
                        width: _appConfig.rW(60),
                        height: _appConfig.rH(16),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              //"TC Artworks", "Ages 6 - 16 Years", "From $30" ---------------
              Container(
                // padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
                // child: Text("Chicken and Duck",
                //   style: TextStyle(fontSize: 12, color: Colors.white),)
                child: Column(
                    children: [



                      //"TC Artworks" ----------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "TC Artworks",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor("#FF4C6C"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "*****",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#FFD25D"),
                                        fontFamily: 'Biko',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"Ages 6 - 16 Years" ----------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "Ages 6 - 16 Years",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                  Text(
                                    "Watching 18 Users",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //"From $30" -------------------------------------------
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Column (
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'From \$30',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("#666666"),
                                      fontFamily: 'Biko',
                                      // fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ]
                ),

              )

            ],
          ),


        ),



      ],
    );
  }

  scrollImage(BuildContext context, Size size, List<Widget> pages) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 0),
        height: _appConfig.rH(24),

        child: Container(
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child:PageView.builder(
                itemCount: pages.length,
                physics: new AlwaysScrollableScrollPhysics(),
                controller: _controller,
                itemBuilder: (BuildContext context, int index) {
                  return pages[index % pages.length];
                },
              )
          ),
        )
    );
  }
  indicateDot(BuildContext context, Size size, List<Widget> pages) {
    return Container(

        alignment: Alignment.center,


        height: 15,
        // color: Colors.transparent,
        // color: Colors.green,
        // padding:  EdgeInsets.only( left: size.width/20, right:size.width/20),
        width: 20 * pages.length.toDouble() + 5,
        margin: EdgeInsets.only(top: 10),
        child: Row(children:[
          new DotsIndicator(
            controller: _controller,
            itemCount: pages.length,
            onPageSelected: (int page) {
              _controller.animateToPage(
                page,
                duration: _kDuration,
                curve: _kCurve,
              );
            },
          )])
    );
  }
}

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 4.0;
  static const int pageCount = 8;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 20.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: index == (controller.page != null
              ? controller.page.round() % pageCount
              : 0) ? HexColor("#C88A3D") : Colors.white38,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    width: 1.5,
                    color: HexColor("#C88A3D")
                )
            ),
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }


  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

