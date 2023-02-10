import 'package:flutter/material.dart';
import '../widgets/prescription_list.dart';

class PrescriptionScreen extends StatelessWidget {
  static const routeName = '/prescription-screen';

  const PrescriptionScreen({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.notifications_none_sharp,color: Color(0xffffffff),)),
                      const SizedBox(width: 7.5,),
                      CircleAvatar(
                        radius: 10.0,
                        child: ClipOval(
                          child: Image.asset('assets/images/doc3.png'),
                        ),
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
                ],
              ),
            ),
            // SizedBox(
            //   height: screenSize.height / 25  ,
            // ),
            const Center(
              child: Text(
                textAlign: TextAlign.center,

                'Prescriptions',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 15,
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
                padding: const EdgeInsets.only(left: 3,right: 3 ),
                child: PrescriptionCategory(),
              ),
            )],
        ),
      ),
    );
  }
}
