import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(PersonalCardApp());
}

class PersonalCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: PersonalCard(
        title: 'PERSONAL CARD',
      ),
    );
  }
}

class PersonalCard extends StatelessWidget {
  final title;
  PersonalCard({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(),
            flex: 1,
          ),
          Expanded(
            child: CircleAvatar(
              radius: 60.0,
              foregroundImage: Image.asset(
                'images/nat.jpeg',
                fit: BoxFit.cover,
              ).image,
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Amr Kamel',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 2.0),
                child: Text(
                  'Mobile App Developer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.grey[300]),
                )),
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 10.0),
            child: Container(
              color: Colors.black,
              height: 1.0,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 4.0),
              child: GestureDetector(
                  onTap: ()=>launch("tel://+201019334494"),
                  child: CustWidget(ic: Icons.phone,txt: '+201019334494',)),
            ),
            flex: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 4.0),
              child: GestureDetector(
                  onTap: ()=>launch("mailto:kula6372@gmail.com?subject=News&body=New%20plugin"),
                  child: CustWidget(ic: Icons.message,txt: 'kula6372@gmail.com',)),
            ),
            flex: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 4.0),
              child: GestureDetector(
                  onTap: ()=>launch("https://www.linkedin.com/in/kam-ula-05776321b/"),
                  child: CustWidget(ic: Icons.web,txt: 'http://linkedin.com',)),
            ),
            flex: 1,
          ),
          Expanded(
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 4.0),
              child: CustWidget(ic: Icons.home,txt: 'Badr City, Cairo',),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(),
            flex: 1,
          ),
        ],
      ),
    );
  }
}



class CustWidget extends StatelessWidget {
  final ic;
  final txt;
  CustWidget({this.ic,this.txt});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(ic,color: Colors.teal,),
        title: Text(txt,style: TextStyle(color: Colors.teal),),
      ),
    );
  }
}

