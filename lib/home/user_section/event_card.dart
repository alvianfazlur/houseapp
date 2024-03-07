import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/home/home_screen_controller.dart';
import 'package:houseapp/home/widgets/button_delete.dart';
import '../../data/events.dart';
import '../../theme.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(event.date);
    return GetBuilder(
      builder: (HomeScreenController controller) => Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: blackColor.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/person.png"))),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.title,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    Text(
                      '${date.day}-${date.month}-${date.year}',
                      style: greyTextStyle.copyWith(fontWeight: medium),
                    ),
                    Text(
                      event.tag,
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
              ),
            ),
            ButtonDelete(event: event, controller: controller),
          ],
        ),
      ),
    );
  }
}
