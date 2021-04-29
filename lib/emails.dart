import 'package:flutter/material.dart';

List<String> emails = [
  'haha@doesnt_matter.com',
  'doesnt_matter@haha.com',
  'doesnt_haha@matter.com',
  'kosdkosdk@gmail.com',
  'koekicmnlcn@yahoo.com',
  'kerolopdfkdvnv90@gmail.com',
  'kerolossameh@gmail',
];

class Emails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        body: Center(
        child: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, i) => ViewEmails(i),
      ),
    ));
  }
}

class ViewEmails extends StatelessWidget {
  final int index;
  ViewEmails(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          Icon(Icons.mail_outline, color: Colors.yellowAccent, size: 20.0,),
          SizedBox(width: 12.0,),
          Text(
            emails[index],
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
