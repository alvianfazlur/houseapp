import 'package:flutter/material.dart';
import 'package:houseapp/home/favorite_card.dart';
import 'package:houseapp/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: ListView(
          children: [
            Text(
              "Dashboard Utama",
              style: regularTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Menu Cepat",
              style: regularTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 150,
                child: FavoriteCard()
            )],
        ),
      )),
    );
  }
}
