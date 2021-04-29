import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_card.dart';

void main() {
  runApp(second_task());
}

class second_task extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            children: [
              Contact_card(
                name: "Abdallah kamal",
                mail: 'doesnt_matter@haha.com',
                phone: '01613543543',
                Stat: "not boss",
                photo: 'https://cdn1.iconfinder.com/data/icons/avatars-55/100/avatar_profile_user_music_headphones_shirt_cool-512.png',
              ),
              Contact_card(
                name: "Kerollos sameh",
                mail: 'haha@doesnt_matter.com',
                phone: '01285447728',
                Stat: "boss",
                photo: 'https://cdn2.iconfinder.com/data/icons/happy-users/100/users03-512.png',
              ),
              Contact_card(
                name: "Larra",
                mail: 'doesnt_haha@matter.com',
                phone: '01613543543',
                Stat: 'maybe\n''boos',
                photo: 'https://etailingsummit.co.uk/wp-content/uploads/2019/03/young-executive-woman-profile-icon-vector-9692645.jpg',
              ),
            ],
          ),
        ),
      );
  }
}
