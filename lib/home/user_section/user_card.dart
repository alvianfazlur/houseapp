import 'package:flutter/material.dart';
import 'package:houseapp/data/user_data.dart';

import '../../theme.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.user,
    required this.index,
  });

  final UserData user;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Row(
        children: [
          Container(
            width: 130,
            height: 100,
            child: Image.asset("assets/images/person.jpg"),
          ),
          Column(
            children: [
              Text(
                user.name,
                style: regularTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(user.type, style: purpleTextStyle),
                  Text(user.number, style: greyTextStyle),
                ],
              )
            ],
          )
        ],
      ),
    );;
  }
}
