import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/orange.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter)),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.pink),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Covid-19',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 30, color: Colors.orange),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Column(children: [
                Text(
                  '#StayHome',
                  style: TextStyle(fontSize: 20, color: Colors.pink),
                ),
              ]),
              SizedBox(
                height: 200,
              ),
              Column(children: [
                Text(
                  '#StaySafe',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ]),
              SizedBox(height:40),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                   
                  
                     Container(
                       padding: EdgeInsets.only(top: 50,left: 20),
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                       
                        border: Border.all(
                          color: Colors.transparent,
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text('precautions',style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(width: 20,),
                          Container(
                             padding: EdgeInsets.only(top: 50,left: 40),
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                       
                        border: Border.all(
                          color: Colors.transparent,
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text('facts',style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(width: 20),      
                    Container(
                       padding: EdgeInsets.only(top: 50,left: 40),
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                       
                        border: Border.all(
                          color: Colors.transparent,
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text('statistics',style: TextStyle(fontSize: 20),),
                    ),
                    
                    SizedBox(width: 20,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
