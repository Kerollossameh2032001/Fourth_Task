import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourthtask/profile_label.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
         Center(
          child: Container(
            margin: EdgeInsets.all(10.0),
            width: 350.0,
            height: 170.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.grey[700]),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[900],
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 250),
                    child: Icon(Icons.edit, size: 20.0, color: Colors.yellowAccent,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 95,),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.yellowAccent,
                        backgroundImage: AssetImage(
                          "assets/Kerollos.PNG",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    "Kerollos Sameh",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "kerolos.20353398@compit.aun.edu.eg",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 10.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
         ProfileLabel(Icons.dashboard, "Dashboard"),
         ProfileLabel(Icons.payments, "Payment History"),
         ProfileLabel(Icons.add_chart, "Statics"),
         ProfileLabel(Icons.wine_bar, "Reward"),
         ProfileLabel(Icons.logout, "Log Out"),

      ],
    ));
  }
}
/* UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  border: Border.all(width: 3.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30.0)
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
                )),*/
