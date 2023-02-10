import 'package:flutter/material.dart';
import 'package:medic_plus/Views/main/tabScreen.dart';
import 'package:medic_plus/Views/widgets/blankTextField.dart';
import 'package:medic_plus/Views/widgets/button.dart';
import 'package:medic_plus/Views/widgets/start_rating.dart';
import 'package:medic_plus/Views/widgets/text_placement.dart';

class CompleteSession extends StatelessWidget {
  const CompleteSession({Key? key}) : super(key: key);
  static const routeName = '/session_complete-screen';


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
                  'Session complete',
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
                  padding: const EdgeInsets.only(left: 53.0, right: 53),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                      // SizedBox(
                      //   height: screenSize.height / 40,
                      // ),
                      Center(child: StarRating(rate: 0)),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const SizedBox(
                        height: 57,
                          width: 270  ,
                        child: Text(
                          'Your session with Dr mayer has been completed please leave a review and rate his services',
                          style: TextStyle(
                            color: Color(0xff797982),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      const SizedBox(
                          height: 190, width: 268, child: BlankTextField()),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      Center(
                        child: SizedBox(
                            height: 46,
                            width: 151,
                            child: NavigationButton(
                                text: "Submit",
                                textColor: const Color(0xffffffff),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const TabScreen()));

                                },
                                color: const Color(0xff6583ED))),
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
