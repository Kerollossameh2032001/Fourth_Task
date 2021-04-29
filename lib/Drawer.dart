import 'package:flutter/material.dart';

class DRAWER extends StatelessWidget {
  var icon ;
  String text ;
  DRAWER(this.text , this.icon);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.yellowAccent,
            size: 25.0,
          ),
          SizedBox(width: 30.0,),
          Text(text,
            style: TextStyle(
              color: Colors.grey,
              fontStyle:FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}
