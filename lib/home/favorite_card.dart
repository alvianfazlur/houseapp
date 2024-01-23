import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/add_user/user.dart';

class FavoriteCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: InkWell(
            onTap: () {
              Get.toNamed(UserScreen.routeName);
            },
            child: Container(
              height: 150,
              width: 120,
              color: CupertinoColors.systemGrey6,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/gedung.png",
                    width: 120,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Tambah Penghuni"),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 30),
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: InkWell(
            onTap: () {

            },
            child: Container(
              height: 150,
              width: 120,
              color: CupertinoColors.systemGrey6,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/gedung.png",
                    width: 120,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Daftar Penghuni"),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 30),
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: InkWell(
            onTap: () {

            },
            child: Container(
              height: 150,
              width: 120,
              color: CupertinoColors.systemGrey6,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/gedung.png",
                    width: 120,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Daftar Kamar"),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 30),
      ],
    );
  }
}
