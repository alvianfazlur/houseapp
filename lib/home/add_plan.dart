import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/add_todo/add_todo.dart';
import 'package:houseapp/theme.dart';

class AddPlan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(AddTodo.routeName);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage("assets/images/grey_wall.jpg"), fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tambah To Do list", style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 20),),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/plus.png"))
              ),
            )
          ],
        ),
      ),
    );
  }
}
