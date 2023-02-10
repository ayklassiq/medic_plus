import 'package:flutter/material.dart';
import 'package:medic_plus/Views/Schedule_Appointment/Your_appointment_Screen.dart';
import 'package:medic_plus/Views/widgets/blankTextField.dart';
import 'package:medic_plus/Views/widgets/button.dart';
import 'package:medic_plus/Views/widgets/text_placement.dart';

class ConfirmAppointment extends StatelessWidget {
  const ConfirmAppointment({Key? key}) : super(key: key);
  static const routeName = '/confirmAppointment-screen';

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
                  'Confirm Appointment',
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
            Container(
                height: screenSize.height /1.3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(10)),
                  color: Color(0xffffffff),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset('assets/images/Doc1.png'),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Dr Tom Cruise',
                          style: TextStyle(
                            color: Color(0xff45589D),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'General doctor',
                          style: TextStyle(
                            color: Color(0xff797982),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Text(
                        'Service type',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const TextPlacement(text: 'Phone Call'),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const Text(
                        'Complaint',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const TextPlacement(text: 'Body Pain, malaria, vomiting'),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const Text(
                        'Date',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const TextPlacement(text: '9th December 2020'),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const Text(
                        'Time',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const TextPlacement(text: '10:30 am'),
                      SizedBox(
                        height: screenSize.height / 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 46,
                              width: 151,
                              child: NavigationButton(
                                  text: "Cancel",
                                  textColor: const Color(0xffFF0716),
                                  onPressed: () {},
                                  color: const Color(0xffffffff))),
                          SizedBox(
                              height: 46,
                              width: 151,
                              child: NavigationButton(
                                  text: "Confirm",
                                  textColor: const Color(0xffffffff),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const YourAppointment()));

                                  },
                                  color: const Color(0xff6583ED)))
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
