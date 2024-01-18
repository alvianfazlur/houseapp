import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:houseapp/home/home_screen.dart';
import 'package:houseapp/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdae7ee),
        body: SafeArea(
          bottom: false,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/gedung.png")
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 30
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo_punggawa.ico')
                          )
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Sebuah Aplikasi\nManajemen Ruangan",
                        style: blackTextStyle.copyWith(
                          fontSize: 24
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Kemudahan Manajemen\nDalam genggaman",
                      style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        height: 50,
                        width: 210,
                        child: ElevatedButton(
                            onPressed: (){
                              Get.toNamed(HomeScreen.routeName);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(purpleColor),
                            ),
                            child: Text("Jelajahi Sekarang",
                              style: whiteTextStyle,
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
        )
    );
  }
}
