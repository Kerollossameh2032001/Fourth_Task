import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourthtask/Drawer.dart';
import 'package:fourthtask/emails.dart';
import 'package:fourthtask/profile.dart';

import 'Contact_Home.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int navBarIndex = 0;
   List item = [
     second_task(),
     Emails(),
     Profile(),
   ];
   List label = [
     "Contact" , "Emails" , "Profile"
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        titleSpacing: 40.0,
        title: Text(label[navBarIndex],
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.yellowAccent,
            fontSize: 25.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                ),
                accountName: Text(
                  "Kerollos Sameh",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.yellowAccent,
                  ),
                ),
                accountEmail: Text(
                  "kerolos.20353398@compite.aun.edu.eg",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.yellowAccent,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.yellowAccent,
                  backgroundImage: AssetImage(
                    "assets/Kerollos.PNG",
                  ),
                )),
            Container(
              color: Colors.grey[900],
              height: 9000000,
                  child: Column(
                    children: [
                      DRAWER("Home", Icons.home),
                      DRAWER("Categories", Icons.widgets_sharp),
                      DRAWER("Add Items", Icons.add_to_photos_sharp),
                      DRAWER("About Us", Icons.error_rounded),
                      DRAWER("Share With friends", Icons.share_outlined),
                      DRAWER("Rate and Review", Icons.rate_review),
                      DRAWER("Privacy Policy", Icons.flag),
                    ],
                  ),


            )
          ],
        ),
      ),
      body: item[navBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            navBarIndex = index ;
          });
        },
        selectedItemColor: Colors.yellowAccent,
        selectedFontSize: 15.0,
        selectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        backgroundColor: Colors.grey[900],
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        currentIndex: navBarIndex,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts, color: Colors.yellowAccent,),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email,color: Colors.yellowAccent,),
            label: "Emails",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.yellowAccent,),
              label: "Profile",
              backgroundColor: Colors.yellowAccent
          ),
        ],
      ),

    );
  }
}
