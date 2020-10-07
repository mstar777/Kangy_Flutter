import 'package:flutter/material.dart';
import 'package:kangy/src/screens/sign.dart';
import 'dart:async';

import 'package:kangy/src/Constants/image_const.dart';
import 'package:kangy/src/Constants/page_const.dart';
import 'dart:math';


//Widget of SplashScreen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
  with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation <double> _animation;




  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween(begin: 0.0, end: 250.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((state) {
        if (state == AnimationStatus.completed) {
          print("complete");
        }
      });
    _controller.forward();

    new Future.delayed(
        const Duration(seconds: 5),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignScreen()),
        ));

    // Timer(
    //   Duration(seconds: 3),
    //       () => Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => SignScreen(),
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Flutter Open"),
      // ),
      body: Container(
        child: Column(
          children: <Widget>[

            Expanded(
              flex: 6,
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Container(
                  // margin: EdgeInsets.only(top: 50.0),
                  child: Transform.rotate(
                    angle: -_animation.value * 2 * pi / 125,
                    child: Image.asset(
                      ImagePath.FLUTTER_OPEN,
                      fit: BoxFit.fitHeight,
                      width: _animation.value,
                      height: _animation.value,
                    ),
                  ),
                ),
              ),
            ),


            // Expanded(
            //     flex: 1,
            //     child: Center(
            //       child: FloatingActionButton(
            //         onPressed: () {
            //           Navigator.pushReplacementNamed(
            //               context, PageConst.SIGN_PAGE);
            //         },
            //         child: Icon(Icons.forward),
            //       ),
            //     ))


          ],
        ),
      ),
    );
  }

  }



