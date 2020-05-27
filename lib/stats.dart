import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp( 
      debugShowCheckedModeBanner: false,
    home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/orange.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      
          body: Column(
            children: <Widget>[
              Container(child: Text('Statistics',style: GoogleFonts.montserrat(color:Colors.pink,fontSize: 25),)),
              Container(
        margin: EdgeInsets.only(top:280),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 50,left: 20),
      width: 220,
      decoration: BoxDecoration(
       
        color: Colors.white,
        border: Border.all(
              color: Colors.transparent,
              width: 8,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: <Widget>[
              Column(children:[ Text(
                'Coronavirus Cases:',
                style: GoogleFonts.montserrat(color : Colors.blueAccent[200],fontSize: 20),
                
                
              ),
              Text('1,915,149',style: GoogleFonts.montserrat(color : Colors.blue,fontSize: 20),textAlign: TextAlign.left,),
              ]),
         
              SizedBox(height:10),
              
              
        ],
      ),
      
    ),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 50,left: 20),
      width: 220,
      decoration: BoxDecoration(
       
        color: Colors.white,
        border: Border.all(
              color: Colors.transparent,
              width: 8,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: <Widget>[
              Column(children:[ Text(
                'Deaths:',
                style: GoogleFonts.montserrat(color : Colors.blueAccent[200],fontSize: 20),
                
                
              ),
              Text('118,984',style: GoogleFonts.montserrat(color : Colors.red,fontSize: 18),textAlign: TextAlign.left,),
              ]),
         
              SizedBox(height:10),
              
              
        ],
      ),
      
    ),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 50,left: 20),
      width: 220,
      decoration: BoxDecoration(
       
        color: Colors.white,
        border: Border.all(
              color: Colors.transparent,
              width: 8,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: <Widget>[
              Column(children:[ Text(
                'Recovered:',
                style: GoogleFonts.montserrat(color : Colors.blueAccent[200],fontSize: 20),
                
                
              ),
              Text('441,232',style: GoogleFonts.montserrat(color : Colors.green,fontSize: 18),textAlign: TextAlign.left,),
              ]),
         
              SizedBox(height:10),
              
              
        ],
      ),
      
    ),
                       
                        
                      

                      ]
                    )
      ),
            ],
          ),
       ),
    ),

      
    );
    
    
  }
  }

