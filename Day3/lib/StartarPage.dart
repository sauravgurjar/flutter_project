

import 'package:Day3/Homepage.dart';
import 'package:Day3/animation/animation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> animation;

  bool _textVisible = true;
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    animation =
        Tween<double>(begin: 1.0, end: 25.0).animate(_animationController);
    super.initState();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void onTap() {
    setState(() {
      _textVisible = false;
    });
    _animationController.forward().then(
        (f) => Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: Homepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Starter.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(
                  .5,
                  Text(
                    'Taking Order for delivery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  1,
                  Text(
                    'See resturants nearby by\nadding location',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, height: 1.4),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                FadeAnimation(
                  1.2,
                  ScaleTransition(
                    scale: animation,
                    child:Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [
                          Colors.lightGreen,
                          Colors.green,
                        ])),
                    child: AnimatedOpacity(opacity: _textVisible ?1.0:0.0,
                    duration: Duration(milliseconds: 50),
                    child: MaterialButton(
                        minWidth: double.infinity,
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: ()=> onTap()),)
                  ), 
                  ),
                  
                ),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                  .5,
                  AnimatedOpacity(opacity: _textVisible ?1.0:0.0 ,
                  duration: Duration(milliseconds: 50),
                 child: Align(
                      child: Text(
                        'Now Deliver to Your Door 24/7 ',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ),
                  )
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),),
          ),
        ),
      ),
    );
  }
}
