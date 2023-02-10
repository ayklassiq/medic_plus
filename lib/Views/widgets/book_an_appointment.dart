import 'package:flutter/material.dart';
import 'package:medic_plus/Views/Schedule_Appointment/symptoms_screen.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column  (
          children: [
            InkWell(
              onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const AppointmentForm()));},
              child: Image.asset('assets/images/home.png',          width: 50,
                height: 50,
              ),
            ),
            const Text(
              'Home visit',
              style: TextStyle(
                color: Color(0xff797982),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const AppointmentForm()));},

              child: Image.asset('assets/images/message.png',          width: 50,
                height: 50,
              ),
            ),
            const Text(
              'chat',
              style: TextStyle(
                color: Color(0xff797982),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const AppointmentForm()));},
              child: Image.asset('assets/images/video.png',          width: 50,
                height: 50,
              ),
            ),
            const Text(
              'Video',
              style: TextStyle(
                color: Color(0xff797982),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const AppointmentForm()));},

              child: Image.asset('assets/images/phone.png',          width: 50,
                height: 50,
              ),
            ),
            const Text(
              'Phone',
              style: TextStyle(
                color: Color(0xff797982),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
