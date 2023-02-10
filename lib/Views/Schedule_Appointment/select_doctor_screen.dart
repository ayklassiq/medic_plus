import 'package:flutter/material.dart';
import 'package:medic_plus/Views/Schedule_Appointment/schedule_screen.dart';
import 'package:medic_plus/Views/widgets/Doctor_list.dart';

import '../widgets/button.dart';
import '../widgets/dummy_Doctors.dart';

class SelectDoctor extends StatelessWidget {
  const SelectDoctor({Key? key}) : super(key: key);
  static const routeName = '/select_doctor-screen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff6583ED),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xffffffff),
                      )),
                  const SizedBox(
                    width: 7.5,
                  ),
                  const Text(
                    'Back',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: SizedBox(
                height: 76,
                width: 280,
                child: Text(
                  textAlign: TextAlign.center,
                  'Schedule Appointment',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 25,
            ),
            const Center(
              child: SizedBox(
                height: 29,
                width: 225,
                child: Text(
                  textAlign: TextAlign.center,
                  'Choose a doctor',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 40,
            ),
            Container(
              height: screenSize.height / 1.3,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(10)),
                color: Color(0xffffffff),
              ),
              child: Column(
                children: [
                  DoctorCategories(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 46,
                            width: 151,
                            child: NavigationButton(
                                text: "Cancel",
                                textColor: Color(0xff6583ED),
                                onPressed: () {Navigator.of(context).pop();},
                                color: Color(0xffffffff))),
                        SizedBox(
                            height: 46,
                            width: 151,
                            child: NavigationButton(
                                text: "Next",
                                textColor: Color(0xffffffff),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const ScheduleScreen()));

                                },
                                color: Color(0xff6583ED)))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
