import 'package:Day3/animation/animation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        brightness: Brightness.light,
        title:  FadeAnimation(
                      1,
                      Text(
                        'Food  Delivery',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )),
        leading: Icon(null),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FadeAnimation(
                            1, makeCategory(isActive: true, title: "Veg")),
                        FadeAnimation(1.3,
                            makeCategory(isActive: false, title: "NonVeg")),
                        FadeAnimation(
                            1.4, makeCategory(isActive: false, title: "Roti")),
                        FadeAnimation(
                            1.5, makeCategory(isActive: false, title: "Rice")),
                        FadeAnimation(1.6,
                            makeCategory(isActive: false, title: "Bevarge")),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            FadeAnimation(
                1,
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Free Delivery",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(1.4, makeItem( "assets/images/one.jpg","Pancake","150/-")),
                    FadeAnimation(1.4, makeItem( "assets/images/two.jpg","chana","150/-")),
                    FadeAnimation(1.8, makeItem( "assets/images/three.jpg","cizzes","150/-")),
                    FadeAnimation(2, makeItem( "assets/images/four.jpg","macho","150/-"))
                  ],
                ),
              ),
              
            ),
            SizedBox(height: 30,),
          ],
          
        ),

      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }

  Widget makeItem(image,item,rate) {
    return AspectRatio(
      aspectRatio: 1/ 1.3,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(20),
            image:DecorationImage(image: AssetImage(image),fit: BoxFit.cover)),
         child: Container(
           decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
             gradient: LinearGradient(
               begin: Alignment.bottomRight,
               stops: [.2,.9],
               colors:[
                 Colors.black.withOpacity(.9),
                 Colors.black.withOpacity(.3),

               ]
             )

           ),
           child: Padding(padding: EdgeInsets.all(20.0),
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
             Align(alignment:Alignment.topRight,
             child: Icon(Icons.favorite,color: Colors.white,),),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
              Text("\Rs"+rate,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
               SizedBox(height: 0,),
               Text(item,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)
             ],)
           ],),),
         ),
        ),
      ),
    );
  }
}
