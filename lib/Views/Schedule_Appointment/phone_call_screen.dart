import 'package:flutter/material.dart';
import 'package:medic_plus/Views/Schedule_Appointment/session_complete_screen.dart';
import 'package:medic_plus/Views/widgets/blankTextField.dart';
import 'package:medic_plus/Views/widgets/button.dart';
import 'package:medic_plus/Views/widgets/text_placement.dart';

class PhoneCall extends StatelessWidget {
  const PhoneCall({Key? key}) : super(key: key);
  static const routeName = '/phoneCall-screen';


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
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
            SizedBox(
              height: screenSize.height / 25,
            ),
            Padding(
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
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'calling',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height /2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 72,
                        width: 77,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const ClipOval(
                          child: Icon(Icons.volume_off),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const CompleteSession()));

                        },
                        child: Container(
                          height: 72,
                          width: 77,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const ClipOval(
                            child: Icon(
                              Icons.call_end,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 72,
                        width: 77,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const ClipOval(
                          child: Icon(Icons.mic_off_rounded),
                        ),
                      ),
                    ],
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
