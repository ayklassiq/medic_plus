import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:medic_plus/Views/Schedule_Appointment/confirm_appointment_screen.dart';

import '../widgets/button.dart';
import '../widgets/time_widget.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);
  static const routeName = '/schedule-screen';

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
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
                  'Pick a date and time',
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
                height: screenSize.height / 1.5 ,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(10)),
                  color: Color(0xffffffff),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 312,
                        width: 312,
                        decoration: const BoxDecoration(
                          // border: Border.all(
                          //   // color: Color(0xffEDF1FD),
                          //   width: 5,
                          // ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(10)),
                          color: Color(0xffffffff),
                        ),
                        child: CalendarCarousel<Event>(
                          thisMonthDayBorderColor: const Color(0xffEDF1FD),
                          todayBorderColor: const Color(0xffDF1FD),
                          onDayPressed: (DateTime date, List<Event> events) {
                            this.setState(() => date);
                          },
                          weekendTextStyle: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 46.0,right: 46.0),
                        child: TimeSelector(),
                      ),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 46,
                              width: 151,
                              child: NavigationButton(
                                  text: "Cancel",
                                  textColor: const Color(0xff6583ED),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  color: const Color(0xffffffff))),
                          SizedBox(
                            width: screenSize.height / 80,
                          ),
                          SizedBox(
                              height: 46,
                              width: 151,
                              child: NavigationButton(
                                  text: "Next",
                                  textColor: const Color(0xffffffff),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const ConfirmAppointment()));

                                  },
                                  color: const Color(0xff6583ED)))
                        ],
                      )

                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
