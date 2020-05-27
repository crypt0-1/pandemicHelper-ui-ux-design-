
import 'package:covid/home.dart';
import 'package:covid/info.dart';
import 'package:covid/stats.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
     int _currentIndex =0;
  final tabs = [
    Home(),
    Stats(),
    Info()

  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
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
        // drawer: Drawer(
        //   child: ListView(
        //     // Important: Remove any padding from the ListView.
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         child: Text('Drawer Header',style: GoogleFonts.montserrat(color: Colors.white),),
        //         decoration: BoxDecoration(
        //           color: Colors.pink,
        //         ),
        //       ),
        //       ListTile(
        //         title: Text('Item 1',style: GoogleFonts.montserrat(color: Colors.pink)),
        //         onTap: () {},
        //       ),
        //       ListTile(
        //         title: Text('Item 2',style: GoogleFonts.montserrat(color: Colors.pink)),
        //         onTap: () {},
        //       ),
        //     ],
        //   ),
        // ),
        bottomNavigationBar: CurvedNavigationBar(
          
          backgroundColor: Colors.pink,
          height: 50,
          
          items:<Widget> [
           
               Icon(Icons.home,size: 20,color: Colors.pink,),
               
              Icon(Icons.assessment ,size: 20,color: Colors.pink),
                Icon(Icons.info,size: 20,color: Colors.pink),
               
                
        
          ],
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
        ),
        
        backgroundColor: Colors.transparent,
         body: tabs[_currentIndex]
        
      ),
    ),

      
    );
  }
}