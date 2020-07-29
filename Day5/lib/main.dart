import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.3)
                ], begin: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeitem("assets/images/place.jpg","dd nagra","45km"),
                          makeitem("assets/images/place2.jpg","gole ka mandir","65km"),
                          makeitem("assets/images/place3.jpg","railway station gwalio","95km"),
                          ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          makepoint(140.0,40.0),
          makepoint(190.0,190.0),
          makepoint(210.0,60.0),
        ],
      ),
    );
  }

  Widget makeitem(image,text,distance) {
    return AspectRatio(
      aspectRatio: 1.7 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover)),
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: Text(
                      distance,
                      style: TextStyle(color: Colors.grey[500]),
                    ))
              ],
            ),
            SizedBox(height: 10.0,),
            Text(
                      text,
                      style: TextStyle(color: Colors.grey[800],fontSize:25,fontWeight:FontWeight.bold ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.star_border, color: Colors.yellow[700],size:30,),
                    )
          ],
        ),
      ),
    );
  
  }
  Widget makepoint(top,left ){
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 20,
        height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      color: Colors.blue.withOpacity(0.3) ),
      child:Animator<double>(
        duration: Duration(seconds:1),
        tween:Tween<double>(begin:4.0,end: 6.0),
        cycles: 0,
        builder:(anim)=> Center(child: Container(
          margin: EdgeInsets.all(anim.value),
           decoration: BoxDecoration(shape: BoxShape.circle,
      color: Colors.blue ),

        ),)
      )
     
       
     ),);
    
  }
}
