import 'package:Day4/Animations/FadeAnimations.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                
                flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/saurav.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [Colors.black, Colors.black.withOpacity(.3)],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimations(
                                1,
                                Text("Saurav singh",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold))),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                FadeAnimations(
                                    1.2,
                                    Text("60 photo",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16))),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimations(
                                    1.2,
                                    Text("0 follwer",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16))),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimations(
                          1.6,
                          Text(
                              'Saurav was born in gwalior,India to hindu family saurav is computer science student and he study amity univesty madhya pardeh gwalior',
                              style:
                                  TextStyle(color: Colors.grey, height: 1.4)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        FadeAnimations(
                            1,
                            Text("Born",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimations(
                          1.6,
                          Text('15 june 1999',
                              style:
                                  TextStyle(color: Colors.grey, height: 1.4)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimations(
                            1,
                            Text("Nationality",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimations(
                          1.6,
                          Text('Indian',
                              style:
                                  TextStyle(color: Colors.grey, height: 0.4)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Photos",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimations(
                          1.8,
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                makephoto('assets/images/one.jpg'),
                                makephoto('assets/images/two.jpg'),
                                makephoto('assets/images/three.jpg'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 120.0,)
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(bottom:50 ,child: Container(child: Align(alignment: Alignment.bottomCenter,
          child: FadeAnimations(
           1.6,
             Container(
               margin: EdgeInsets.symmetric(horizontal: 30),
               height: 50,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow[700])
               ,child:Align(child: Text("Follow me",style: TextStyle(color: Colors.white),),)
              
            ),
          
          ),),))
        ],
      ),
    );
  }

  Widget makephoto(images) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(images),
          fit: BoxFit.cover,
          ),

      ),
      child: Container(
         decoration: BoxDecoration(
         gradient: LinearGradient(
         begin: Alignment.bottomRight,
          colors: [Colors.black.withOpacity(.9), Colors.black.withOpacity(.3)],
           ),
           ),
           child: Align(
             child: Icon(Icons.play_arrow,color: Colors.white,size: 50,)
           ),
      ),
    ));
  }
}
