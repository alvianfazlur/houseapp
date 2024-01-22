import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/home/home_screen_controller.dart';

class UserScreen extends GetView<HomeScreenController> {
  const UserScreen({Key? key}) : super(key: key);
  static const routeName = "/user";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const BackButton(),
          TextFormField(
              controller: controller.nameController,
              decoration: const InputDecoration(
                  labelText: "Nama Penghuni",
                  hintText: "Silahkan Masukkan Nama Penghuni")),
          TextFormField(
              controller: controller.typeController,
              decoration: const InputDecoration(
                  labelText: "Tipe Kamar",
                  hintText: "Silahkan Masukkan Tipe Kamar")),
          TextFormField(
              controller: controller.numberController,
              decoration: const InputDecoration(
                  labelText: "Nomor Kamar",
                  hintText: "Silahkan Masukkan Nomor Kamar")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              controller.addUser();
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0),
              ),
              elevation: 3.0,
            ),
            child: const Text('Simpan Data'),
          )
        ],
      )),
    );
  }
}
