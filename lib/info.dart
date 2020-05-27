import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      debugShowCheckedModeBanner: false,
    home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/orange.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter)),
      child: Scaffold(
        
         body: ListView.builder(
            
          itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
          itemCount: data.length,),
    
         ),
    ),

      
    );

          
         

     
     
          
    
    
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'What are the symptoms of COVID-19?',
    <Entry>[
      Entry(
        "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention.",
      ),
    ],
  ),
  Entry(
    'What can I do to protect myself and prevent the spread of disease?',
    <Entry>[
      Entry(
          'DO:\n\nWash your hands regularly for 20 seconds, with soap and water or alcohol-based hand rub \n\nCover your nose and mouth with a disposable tissue or flexed elbow when you cough or sneeze \n\nAvoid close contact (1 meter or 3 feet) with people who are unwell \n\nStay home and self-isolate from others in the household if you feel unwell \n\n\n\n DONOT: \n\nTouch your eyes, nose, or mouth if your hands are not clean'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    
    if (root.children.isEmpty)
      return ListTile(
        title: Text(root.title,
            style: GoogleFonts.montserrat(color: Colors.black54)),
      );
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(
        root.title,
        style: GoogleFonts.montserrat(color: Colors.black, fontSize: 20),
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

void main() {
  runApp(Info());
}
