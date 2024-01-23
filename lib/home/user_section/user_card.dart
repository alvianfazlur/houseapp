import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/data/user_data.dart';
import 'package:houseapp/detail_user/detail_user.dart';

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
    return InkWell(
      onTap: (){
        Get.toNamed(DetailUserScreen.routeName, arguments: {'user': user, 'index': index});
      },
      child: Column(
        children: [
          SizedBox(height: 5,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: greyColor,
                width: 1.0,
              ),
            ),
            child: ClipRRect(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
          ),
        ],
      ),
    );
  }
}
