import 'package:covid/info.dart';
import 'package:covid/stats.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(height: 40),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Hscroll(
                    text: 'Precautions',
                    image: DecorationImage(
                      image: AssetImage('assets/pink.png'),
                      fit: BoxFit.cover,
                    ),
                    go: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Info()));
                    },
                  ),
                  Hscroll(
                    text: 'Symptoms',
                    image: DecorationImage(
                      image: AssetImage('assets/sym.png'),
                      fit: BoxFit.cover,
                    ),
                      go: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Info()));
                    },
                  ),
                  Hscroll(
                    text: 'stats',
                    image: DecorationImage(
                      image: AssetImage('assets/graph.png'),
                      fit: BoxFit.cover,
                    ),
                      go: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Stats()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ));

    // ),
    //   )
    //     )
    // );
  }
}

class Hscroll extends StatelessWidget {
  final String text;
  var image;
  final Function go;

  Hscroll({this.text, this.image, this.go});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: go,
      
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(top: 0, left: 50),
        width: 220,
        decoration: BoxDecoration(
          image: image,
          color: Colors.white,
          border: Border.all(
            color: Colors.transparent,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              color: Colors.blueAccent[200], fontSize: 20),
        ),
      ),
    );
  }
}
