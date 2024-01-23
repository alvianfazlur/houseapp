import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houseapp/detail_user/detail_user_controller.dart';
import 'package:houseapp/theme.dart';
import '../home/home_screen_controller.dart';

class DetailUserScreen extends GetView<DetailUserController> {
  static const routeName = '/detail';

  final _formKey = GlobalKey<FormState>();
  var crud = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailUserController>(
        builder: (controller) => Scaffold(
          appBar: AppBar(),
              body: GestureDetector(
                onTap: (){
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: SafeArea(
                  child: SingleChildScrollView(
                      child: Stack(children: [
                    Image.asset(
                      'assets/images/people.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: 330,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 300,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height - 330,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30)),
                                color: Colors.orangeAccent),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                'Detail Penghuni',
                                                style: titleTextStyle,
                                              ),
                                              SizedBox(height: 30,),
                                              Column(
                                                children: [
                                                  TextFormField(
                                                    controller: controller.nameEditingController,
                                                    decoration: InputDecoration(
                                                      labelText: "Nama Penghuni",
                                                      hintText:
                                                      "Silahkan Masukkan Nama Penghuni",
                                                      border: OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(10.0),
                                                      ),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null || value.isEmpty) {
                                                        return 'Nama Penghuni harus diisi';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  const SizedBox(height: 20,),
                                                  TextFormField(
                                                    controller: controller.numberEditingController,
                                                    decoration: InputDecoration(
                                                      labelText: "Nomor Kamar",
                                                      hintText:
                                                      "Silahkan Masukkan Nomor Kamar",
                                                      border: OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(10.0),
                                                      ),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null || value.isEmpty) {
                                                        return 'Nama Penghuni harus diisi';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  const SizedBox(height: 20,),
                                                  TextFormField(
                                                    controller: controller.typeEditingController,
                                                    decoration: InputDecoration(
                                                      labelText: "Tipe Kamar",
                                                      hintText:
                                                      "Silahkan Masukkan Tipe Kamar",
                                                      border: OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(10.0),
                                                      ),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null || value.isEmpty) {
                                                        return 'Nama Penghuni harus diisi';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      if (_formKey.currentState!.validate()) {
                                                       crud.updateUser(controller.index, controller.nameEditingController.text, controller.numberEditingController.text, controller.typeEditingController.text);
                                                      }
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor: Colors.white,
                                                      backgroundColor: Colors.blue,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(10.0),
                                                      ),
                                                      elevation: 3.0,
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.all(12.0),
                                                      child: Text('Simpan Data'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ])),
                ),
              ),
            ));
  }
}
