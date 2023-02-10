import 'package:flutter/material.dart';
import 'package:medic_plus/Views/widgets/button.dart';

import '../widgets/appointment_card.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);
  static const routeName = '/appointment-screen';


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
                      child: const Icon(Icons.arrow_back,color: Color(0xffffffff),)),
                  const SizedBox(width: 7.5,),
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

                  'Appointments',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontSize: 32  ,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 25  ,
            ),

            Container(
                height: screenSize.height/0.01,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(10)),
                  color: Color(0xffffffff),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:33.0,right: 30 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [

                      SizedBox(
                        height: screenSize.height / 40  ,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height:46,width:151,child: NavigationButton(text: "Upcoming", textColor: const Color(0xff000000), onPressed: (){}, color: const Color(0xffffffff))),

                          SizedBox(height:46,width:151,child: NavigationButton(text: "Completed", textColor: const Color(0xffCEC9C9), onPressed: (){}, color: const Color( 0xffFBFCFF)))

                        ],
                      ),
                      AppointmentCard(image:'assets/images/Doc1.png',doctor:'Dr Tom Cruize',time:'10:30am',date:'9th December, 2020',mode:'Phone call'),
                      AppointmentCard(image:'assets/images/Doc1.png',doctor:'Dr Mayer White',time:'10:30am',date:'7th December, 2020',mode:'chat'),
                      AppointmentCard(image:'assets/images/Doc1.png',doctor:'Dr Zoe Chase',time:'10:30am',date:'30th December, 2020',mode:'vidoe call'),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),

    );
  }
}

