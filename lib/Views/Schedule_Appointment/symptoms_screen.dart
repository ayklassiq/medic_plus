import 'package:flutter/material.dart';
import 'package:medic_plus/Views/Schedule_Appointment/select_doctor_screen.dart';
import 'package:medic_plus/Views/widgets/blankTextField.dart';
import 'package:medic_plus/Views/widgets/button.dart';

class AppointmentForm extends StatelessWidget {
  const AppointmentForm({Key? key}) : super(key: key);
  static const routeName = '/symptoms-screen';

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
                  'What symptoms are you feeling',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 15,
            ),
            Container(
                height: screenSize.height / 1.5,
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
                      const Text(
                        'What symptoms are you feeling?',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const BlankTextField(),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const Text(
                        'How long have you been feeling this way?',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const BlankTextField(),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const Text(
                        'Have you used any medication?',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const BlankTextField(),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const Text(
                        'If yes, What medication?',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const BlankTextField(),
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
                                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const SelectDoctor()));

                                  },
                                  color: Color(0xff6583ED)))
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
