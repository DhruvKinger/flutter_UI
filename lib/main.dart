import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/horror.jpg',
    'assets/images/Romance.jpg',
    'assets/images/erotic.jpg',
    'assets/images/Gossip.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Let's Read",
     home: Container(
        decoration: BoxDecoration(
            
              image: DecorationImage(image: AssetImage('./assets/images/background.png') , fit: BoxFit.cover)
            ),
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Dashboard"),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
           
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/reading.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Read IT", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Center(child: Text("Continue Reading", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),)),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: <Widget>[
                    
                    Card(
                    
                    color: Colors.transparent,
                    elevation: 0,
                    
                    child: Container(
                      child:Center(child: Text("Horror", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30,),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/horror.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),


                  Card(
                    
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      child:Center(child: Text("Romance", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30,),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Romance.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),


                  Card(
                    
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      child:Center(child: Text("Gossip", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30,),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Gossip.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),


                  Card(
                    
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      child:Center(child: Text("Erotic", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30,),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/erotic.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  )]),
            )
            ])
            ,
          ),
        ),
      ),
    ),
      );
    
  }
}
