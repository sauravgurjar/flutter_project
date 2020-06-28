import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           
          children: <Widget>[
            
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Find Your',
                    style: TextStyle(color: Colors.black87, fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Food',
                    style: TextStyle(color: Colors.black, fontSize: 40.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: "Search you're loking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Promo Today',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(   // promo today
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promocard('assets/images/one.jpeg'),
                        promocard('assets/images/rice.jpeg'),
                        promocard('assets/images/roti.jpeg'),
                        promocard('assets/images/one.jpeg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    
                     height: 100,// size of container last food
                     decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.orange,
                          image: DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage('assets/images/index.jpeg') ),
                         ) ,
                         child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(begin:Alignment.bottomRight ,
                            stops: [0.3,0.9], 
                            colors: [Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.1)])
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('best food',style: TextStyle(color:Colors.white,fontSize: 20.0 ),),
                            ),
                          ),
                       ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),);
  }

  Widget promocard(Image) {
    return AspectRatio(
        aspectRatio: 2.6 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage(Image) ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin:Alignment.bottomRight ,stops: [0.1,0.9], colors: [Colors.black.withOpacity(.8),Colors.black.withOpacity(.1)])
              ),
            ),
          
        ));
  }
}
