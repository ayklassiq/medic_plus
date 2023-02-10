import 'package:flutter/material.dart';
import 'package:medic_plus/Views/widgets/button.dart';

import 'text_placement.dart';

class AppointmentCard extends StatelessWidget {
   AppointmentCard({super.key,
    required this.time, required this.doctor, required this.date, required this.mode, required
  this.image
  });
String doctor;
String time;
String date;
String mode;
String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 227,
      width: 311,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              height: 75,
              width: 71,
              child: ClipOval(
                child: Image.asset(image),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
               Text(
                doctor
                ,
                style: const TextStyle(
                  color: Color(0xff45589D),
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
               Text(
                time,
                style: const TextStyle(
                  color: Color(0xff797982),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
               Text(
                date,
                style: const TextStyle(
                  color: Color(0xff797982),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 25,
                width: 93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffC6CEEC)),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 3, bottom: 3),
                  child: Text(mode,
                    style: const TextStyle(
                          color: Color(0xff797982),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              SizedBox(
                  height: 39,
                  width: 111,
                  child: NavigationButton(
                      text: 'view',
                      textColor: const Color(0xffffffff),
                      onPressed: () {},
                      color: const Color(0xff6583ED)))
            ])
          ],
        ),
      ),
    );
  }
}
