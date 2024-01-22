import 'package:flutter/material.dart';
import 'package:houseapp/data/user_data.dart';

import '../../theme.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
    required this.index,
    required this.onDeletePressed,
  }) : super(key: key);

  final UserData user;
  final int index;
  final VoidCallback onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 130,
                height: 100,
                child: Image.asset("assets/images/person.png"),
              ),
              Column(
                children: [
                  Text(
                    user.name,
                    style:
                    regularTextStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(user.type, style: purpleTextStyle),
                      Text(user.number, style: greyTextStyle),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: onDeletePressed,
              child: Container(
                width: 50,
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
