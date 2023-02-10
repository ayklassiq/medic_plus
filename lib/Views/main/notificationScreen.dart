import 'package:flutter/material.dart';

import '../widgets/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const routeName = '/notification-screen';


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
                  'Notifications',
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
                height: screenSize.height / 0.01,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(10)),
                  color: Color(0xffffffff),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30, left: 32.0, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text( 'Today',
                        style: TextStyle(
                          color: Color(0xff45589D),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 25,
                      ),
                      NotifyWidget(
                          text:
                              'Your appointment with Dr Tom Cruize  was successful. Don’t forget to keep your appointment',
                          image: 'assets/images/doc3.png'),
                      SizedBox(
                        height: screenSize.height / 25,
                      ),
                      NotifyWidget(
                          text:'Reminder! You have an appointment with Dr Mayer today via phone call',
                          image: 'assets/images/doc2.png'),
                      SizedBox(
                        height: screenSize.height / 25,
                      ),
                      const Text( 'This month',
                        style: TextStyle(
                          color: Color(0xff45589D),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 25,
                      ),
                      NotifyWidget(
                          text:'Reminder! Don’t forget to always wear your mask wherever you go and always protect yourself',
                          image: 'assets/images/generalclinic.png'),
                      SizedBox(
                        height: screenSize.height / 25,
                      ),
                      NotifyWidget(
                          text:'Your profile picture was successfully changed.',
                          image: 'assets/images/Doc1.png'),
                      SizedBox(
                        height: screenSize.height / 25,
                      ),
                      NotifyWidget(
                          text:'Your appointment with Dr Mayer White was successful. Don’t forget to keep your appointment',
                          image: 'assets/images/doc3.png'),
                      SizedBox(
                        height: screenSize.height / 25,
                      ),
                      NotifyWidget(
                          text:'Your appointment with Dr Mayer White was successful. Don’t forget to keep your appointment',
                          image: 'assets/images/doc3.png'),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
