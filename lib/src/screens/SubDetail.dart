import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:kangy_flutter/src/Constants/color.dart';
import 'package:kangy_flutter/src/screens/tab/App_Tab.dart';


// import 'package:provider/provider.dart';

import 'package:kangy_flutter/src/packages/NamedIcon.dart';
import 'package:kangy_flutter/src/Constants/AppConfig.dart';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';







//Widget of SignScreen
class SubDetailScreen extends StatefulWidget {
  @override

  _SubDetailScreenState createState() => _SubDetailScreenState();
}


class _SubDetailScreenState extends State<SubDetailScreen> {

  AppConfig _appConfig;



  static const Color orange1 = Color(0xFFFF7200);
  static const Color orange2 = Color(0xFFFF7104);
  static const Color orange3 = Color(0xFFFac695);


  final themeColor = Color(0xfff5a623);
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;
  DateTime _dateTime;
  final format = DateFormat("yyyy-MM-dd");
  final TextEditingController birthdayFilter = new TextEditingController();
  String birth = "";
  void birthdayListen() {
    if (birthdayFilter.text.isEmpty) {
      birth = "";
    } else {
      birth = birthdayFilter.text;
    }
  }



  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    _appConfig = new AppConfig(context);


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
                          height: 105 + 56 + _appConfig.rH(24) + 297 + _appConfig.rH(48) + 90 + 590,  //
                          // margin: EdgeInsets.only(top: 40),
                          // color: Colors.red,

                          child: Column(
                            children: [

                              TopContactSection(size),                          //size.height * (240 / 812)
                              SizedBox(height: 15),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(margin:EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [

                                        Text("Flour Power Kids Cooking Studios\nFalls River",textAlign:TextAlign.start,style: TextStyle(fontSize:15,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                        SizedBox(height: 5),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Cooking",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5, fontFamily: 'Biko', color: Colors.black)),
                                            Text("|  ",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5, fontFamily: 'Biko', color: Colors.black)),
                                            Text("Social skills",textAlign:TextAlign.center,style: TextStyle(fontSize:12, fontFamily: 'Biko', height:1.5,color:Colors.black)),
                                            Text("|  ",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5, fontFamily: 'Biko', color:Colors.black)),
                                            Text("Life skills",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5, fontFamily: 'Biko', color: Colors.black)),
                                          ],
                                        ),

                                        SizedBox(height: 5),
                                        Row(
                                          children: <Widget>[
                                            Container(width:20,height:20,child:  new IconButton(icon: new Icon(Icons.star,size: 15),
                                              onPressed: ()=>setState((){
                                                _myColorOne=Colors.orange;
                                                _myColorTwo=Colors.grey;
                                                _myColorThree=Colors.grey;
                                                _myColorFour=Colors.grey;
                                                _myColorFive=Colors.grey;
                                              }),color: _myColorOne,)),
                                            Container(width:20,height:20,child:new IconButton(icon: new Icon(Icons.star,size: 15),
                                              onPressed: ()=>setState((){
                                                _myColorOne=Colors.orange;
                                                _myColorTwo=Colors.orange;
                                                _myColorThree=Colors.grey;
                                                _myColorFour=Colors.grey;
                                                _myColorFive=Colors.grey;
                                              }),color: _myColorTwo,)),
                                            Container(width:20,height:20,child:new IconButton(icon: new Icon(Icons.star,size: 15), onPressed: ()=>setState((){
                                              _myColorOne=Colors.orange;
                                              _myColorTwo=Colors.orange;
                                              _myColorThree=Colors.orange;
                                              _myColorFour=Colors.grey;
                                              _myColorFive=Colors.grey;
                                            }),color: _myColorThree,),),
                                            Container(width:20,height:20,child: new IconButton(icon: new Icon(Icons.star,size: 15), onPressed: ()=>setState((){
                                              _myColorOne=Colors.orange;
                                              _myColorTwo=Colors.orange;
                                              _myColorThree=Colors.orange;
                                              _myColorFour=Colors.orange;
                                              _myColorFive=Colors.grey;
                                            }),color: _myColorFour,),),
                                            Container(width:20,height:20,child:new IconButton(icon: new Icon(Icons.star,size: 15), onPressed: ()=>setState((){
                                              _myColorOne=Colors.orange;
                                              _myColorTwo=Colors.orange;
                                              _myColorThree=Colors.orange;
                                              _myColorFour=Colors.orange;
                                              _myColorFive=Colors.orange;
                                            }),color: _myColorFive,),),
                                            SizedBox(width: 10,),


                                            Column(
                                              children: [
                                                SizedBox(height: 10,),
                                                Row(children: [ Text("12",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5,color: Colors.black)),
                                                  Text("  Reviews",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5,color:Colors.black)),],)
                                              ],
                                            )

                                          ],
                                        ),

                                        SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Container(child:  Image.asset('assets/images/1.png',fit: BoxFit.fill,),height: 40,),
                                                SizedBox(height: 5,),
                                                Text("About",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5,fontFamily: 'Biko',color: Colors.black)),
                                              ],
                                            ),
                                            SizedBox(width: size.width/10,),
                                            Column(
                                              children: [
                                                Container(child:  Image.asset('assets/images/5.png',fit: BoxFit.fill),height: 40,),
                                                SizedBox(height: 7,),
                                                Text("Schedule",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5,fontFamily: 'Biko',color: Colors.black)),
                                              ],
                                            ),
                                            SizedBox(width: size.width/10,),
                                            Column(
                                              children: [
                                                Container(child:  Image.asset('assets/images/3.png',fit: BoxFit.fill),height: 40,),
                                                SizedBox(height: 5,),
                                                Text("Message",textAlign:TextAlign.center,style: TextStyle(fontSize:12,height:1.5,fontFamily: 'Biko',color: Colors.black)),
                                              ],
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: 20),
                                        Container(
                                          height:  50,
                                          margin:EdgeInsets.only(right:20),
                                          // decoration: BoxDecoration(borderRadius:BorderRadius.circular(5),border:Border.all(width: 0.5,color: Colors.black12),
                                          //   color: Colors.grey,
                                          // ),

                                          child: DateTimeField(
                                            format: format,
                                            onShowPicker: (context, currentValue) async {
                                              final date = await showDatePicker(
                                                  context: context,
                                                  firstDate: DateTime(1900),
                                                  initialDate: currentValue ?? DateTime.now(),
                                                  lastDate: DateTime(2100));
                                              if (date != null) {
                                                return date;
                                              } else {
                                                return currentValue;
                                              }},
                                            onSaved: (DateTime dateTime) => _dateTime = dateTime,
                                            controller: birthdayFilter,
                                            style: TextStyle(fontSize: 16, color:  HexColor('#C88A3D'),fontWeight: FontWeight.bold, fontFamily: 'Biko'),
                                            cursorColor: Colors.black54,
                                            decoration: InputDecoration(
                                              suffixIcon: Padding(
                                                padding: const EdgeInsetsDirectional.only(end: 12.0),
                                                child: Image.asset('assets/images/date.png'),
                                              ),
                                              prefixText: "Starting From ",
                                              prefixStyle: TextStyle(fontSize: 16, color:  HexColor('#C88A3D'),fontWeight: FontWeight.bold, fontFamily: 'Biko'),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              errorStyle: TextStyle(color: Colors.red),
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),

                                          ),
                                        ),

                                        SizedBox(height: 20),
                                        Container(
                                          height: 220,
                                          width: size.width,
                                          padding:  EdgeInsets.only(left: 10,right: 10),
                                          margin: EdgeInsets.only(right: 20),
                                          decoration: BoxDecoration( border: Border.all(width: 0.5),borderRadius: BorderRadius.circular(5)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10),
                                              Text("Flour Power Kids Cooking Studios Falls River",textAlign:TextAlign.start,style: TextStyle(fontSize:14,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                              SizedBox(height: 6),
                                              Text("Aug 15-Sep 05, 2020",style: TextStyle(fontSize:13,color: Colors.black54,)),
                                              SizedBox(height: 6),
                                              Text("09:00 am-10:00 pm",style: TextStyle(fontSize:13,color: Colors.black54,)),

                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("S",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("M",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("T",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("W",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("T",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("F",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( color:HexColor('#C88A3D'),border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("S",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: Colors.white, fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                ],
                                              ),

                                              SizedBox(height: 10),
                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                                Text("\$25",textAlign:TextAlign.start,style: TextStyle(fontSize:14,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                Text("Seats remaining:3",style: TextStyle(fontSize:13,color: Colors.black54,)),
                                              ],),

                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: size.width-100,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        color: HexColor('#C88A3D'),
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(100.0))),
                                                    child: Text(
                                                      "Add to Cart",
                                                      style: TextStyle(
                                                          color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                                                    ),
                                                  )
                                                ],)


                                            ],
                                          ),
                                        ),

                                        SizedBox(height: 20),
                                        Container(
                                          height: 220,
                                          width: size.width,
                                          padding:  EdgeInsets.only(left: 10,right: 10),
                                          margin: EdgeInsets.only(right: 20),
                                          decoration: BoxDecoration( border: Border.all(width: 0.5),borderRadius: BorderRadius.circular(5)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10),
                                              Text("Flour Power Kids Cooking Studios Falls River",textAlign:TextAlign.start,style: TextStyle(fontSize:14,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                              SizedBox(height: 6),
                                              Text("Aug 15-Sep 05, 2020",style: TextStyle(fontSize:13,color: Colors.black54,)),
                                              SizedBox(height: 6),
                                              Text("09:00 am-10:00 pm",style: TextStyle(fontSize:13,color: Colors.black54,)),

                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("S",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("M",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("T",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("W",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("T",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("F",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration( color:HexColor('#C88A3D'),border:Border.all(color: Colors.black38),borderRadius: BorderRadius.circular(15)),
                                                    child:  Text("S",textAlign:TextAlign.center,style: TextStyle(fontSize:16,height:1.5,color: Colors.white, fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                  ),
                                                  SizedBox(width: 10,),
                                                ],
                                              ),

                                              SizedBox(height: 10),
                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                                Text("\$25",textAlign:TextAlign.start,style: TextStyle(fontSize:14,height:1.5,color: HexColor('#C88A3D'), fontFamily: 'Biko',fontWeight: FontWeight.bold)),
                                                Text("Seats remaining:3",style: TextStyle(fontSize:13,color: Colors.black54,)),
                                              ],),

                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: size.width-100,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        color: HexColor('#C88A3D'),
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(100.0))),
                                                    child: Text(
                                                      "Add to Cart",
                                                      style: TextStyle(
                                                          color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                                                    ),
                                                  )
                                                ],)


                                            ],
                                          ),
                                        ),

                                        SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              OnlineClassSection(size),                         //40+rH(16)+3+3+3+70

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
  Widget TopContactSection(size) {
    return Container(
        height: size.height * (240 / 812),
        // width: double.infinity,

        child: Stack(
            children: <Widget>[

              Container(

                child: Column(
                  children: [
                    Container(
                        height: size.height * (240 / 812),
                        // width: double.infinity,
                        alignment: Alignment.center,
                        // color: Colors.green,

                        child: Opacity(
                          opacity: 1.0,
                            child: Image.asset(
                              'assets/images/child0.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              colorBlendMode: BlendMode.hardLight,
                            ),
                        ),

                    ),
                  ],
                )

              ),

              //Back Button, Favorite Button -----------------------------------
              Container(
                margin: EdgeInsets.only(top: 0, left: 0, right: 10, bottom: 0),
                height: 70,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 0, left: 10, right: 0, bottom: 0),
                        height: 70,
                        // color: Colors.red,

                        child: IconButton(
                          onPressed: () => Navigator.pop(context, false),
                          // onPressed: () => Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => new AppTab())),
                          icon: Icon(Icons.keyboard_backspace),
                          color: Colors.white,
                          iconSize: 32,
                        )
                    ),
                  ],
                ),
              ),

            ]
        )

    );
  }


  //Widget of Title ------------------------------------------------------------
  Widget TitleSection(size) {

    return Container(
        height: 260,
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

  //Widget of OnlineClass ------------------------------------------------------
  Widget OnlineClassSection(size) {

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
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


}

