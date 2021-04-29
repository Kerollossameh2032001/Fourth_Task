import 'package:flutter/material.dart';

class ProfileLabel extends StatelessWidget {

  var icon , text;
  ProfileLabel(this.icon , this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Text(
            text,
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
