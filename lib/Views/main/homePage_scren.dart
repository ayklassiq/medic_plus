import 'package:flutter/material.dart';

import '../widgets/book_an_appointment.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/clinic_dummy.dart';
import '../widgets/clinic_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff6583ED),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.notifications_none_sharp,
                  color: Color(0xffffffff),
                ),
                CircleAvatar(
                  radius: 20.0,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/ayo.jpg',
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 206, top:38),
              child: SizedBox(
                height: 23,
                width: 110,
                child: Text(
                  'Hello Esther,',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(right: 54.0, bottom: 36),
              child: SizedBox(
                height: 29,
                width: 264,
                child: Text(
                  'Have you washed your hands today?',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 15,
            ),
            Container(
              // height: 600,
              height: screenSize.height / 0.01,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(10)),
                color: Color(0xffffffff),
              ),

              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -62,
                    left: 32,
                    right: 32,
                    child: Container(
                      height: 126.7,
                      width: 311,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 19.0,left: 23, right: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Today’s appointment',
                                  style: TextStyle(
                                    color: Color(0xff45589D),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'Optician at the St Raphael specialist \n hospital,Ikoyi \n 10 am prompt',
                              style: TextStyle(
                                color: Color(0xff797982),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 105,
                    left: 32,
                    right: 32,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            'Book an appointment ',
                            style: TextStyle(
                              color: Color(0xff45589D),
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 22,),
                          const BookAppointment(),
                          const SizedBox(height: 22,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Frequent Clinics ',
                                style: TextStyle(
                                  color: Color(0xff45589D),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'see all',
                                    style: TextStyle(
                                      color: Color(0xffC4C4C4),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.blue,
                                  )
                                ],
                              )
                            ],
                          ),
                GridView(
                padding: const EdgeInsets.all(15),
          shrinkWrap: true,
         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

              maxCrossAxisExtent: 200,
              childAspectRatio: 1/ 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: Dummy_Clinic
              .map(
                (clinicData) => ClinicList(
                clinicData.title,
                clinicData.image,
                clinicData.description
            ),
          )
              .toList()),
                        ],

                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
