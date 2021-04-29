import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact_card extends StatelessWidget {
  String name , mail , phone , photo , Stat;
  Contact_card({this.name,this.photo,this.mail,this.phone, this.Stat});
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 145.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            width: 1.0,
            color: Colors.yellowAccent,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.yellowAccent,
                backgroundImage: NetworkImage(
                  photo,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.mail,color: Colors.yellowAccent,size: 15,),
                            Padding(padding: EdgeInsets.only(left: 10),
                              child: Text(mail,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.phone,color: Colors.yellowAccent,size: 15,),
                            Padding(padding: EdgeInsets.only(left: 10,),
                              child:  Text(phone,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.suit_heart_fill,color: Colors.yellowAccent,size: 20,),
                            Icon(CupertinoIcons.suit_heart_fill,color: Colors.yellowAccent,size: 20,),
                            Icon(CupertinoIcons.suit_heart_fill,color: Colors.yellowAccent,size: 20,),
                            Padding(padding: EdgeInsets.only(left: 15,),
                              child: Icon(CupertinoIcons.tag, color: Colors.yellowAccent,size: 20,),
                            ),
                            Padding(padding: EdgeInsets.only(left: 5),
                              child: Text(Stat,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 30,),
                              child: Icon(CupertinoIcons.delete_solid, color: Colors.yellowAccent,size: 20,),
                            ),
                          ],

                        )
                      ],

                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
