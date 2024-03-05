import 'package:flutter/material.dart';
import '../../data/events.dart';
import '../../theme.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.event,
    required this.index,
  }) : super(key: key);

  final EventModel event;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

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
                            event.title,
                            style:
                            regularTextStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${event.date}",
                            style:
                            regularTextStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Positioned(
                  //   top: 0,
                  //   bottom: 0,
                  //   right: 0,
                  //   child: GestureDetector(
                  //     onTap: onDeletePressed,
                  //     child: Container(
                  //       width: 50,
                  //       color: Colors.red,
                  //       child: Icon(
                  //         Icons.delete,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
