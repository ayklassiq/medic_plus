import 'package:flutter/material.dart';
import 'package:medic_plus/Views/widgets/blankTextField.dart';
import 'package:medic_plus/Views/widgets/button.dart';
import 'package:medic_plus/Views/widgets/text_placement.dart';

import '../widgets/logout.dart';
import '../widgets/userTextplacement.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);
  static const routeName = '/userProfile-screen';

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
              child: Text(
                textAlign: TextAlign.center,
                'User profile',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 50,
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
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenSize.height /50,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(shape: BoxShape.circle),
                              height: 90,
                              width: 96,
                              child: ClipOval(
                                child: Image.asset('assets/images/Doc1.png'),
                              ),
                            ),
                            const Positioned(
                              right: 10.0,
                              bottom: 10.0,
                              child: Icon(
                                Icons.photo_camera_outlined,
                                color: Colors.black,
                                size: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const [
                           Text(
                             'Esther Dike',
                             style: TextStyle(
                               color: Color(0xff45589D),
                               fontWeight: FontWeight.w700,
                               fontSize: 16,
                             ),
                           ),
                           Icon(Icons.edit)
                         ],
                       ),
                      SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const Center(
                        child: Text(
                          '20 years',
                          style: TextStyle(
                            color: Color(0xff797982),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const Center(
                        child: Text(
                          'Female',
                          style: TextStyle(
                            color: Color(0xff797982),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const Center(
                        child: Text(
                          'Asthma, Ulcer and Pile',
                          style: TextStyle(
                            color: Color(0xff797982),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const UserTextPlacement(
                        text: 'Baker street, Adeniran ogunsanya',
                        surfixIcon: Icons.arrow_forward_ios_outlined,
                        leadingIcon: Icons.location_on,
                      ),
                      SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const UserTextPlacement(
                        text: '09026308554',
                        surfixIcon: Icons.arrow_forward_ios_outlined,
                        leadingIcon: Icons.phone,
                      ),
                      SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const UserTextPlacement(
                        text: 'Officialessy24@gmail.com',
                        surfixIcon: Icons.arrow_forward_ios_outlined,
                        leadingIcon: Icons.email_outlined,
                      ),SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const UserTextPlacement(
                        text: '9000/ month',
                        surfixIcon: Icons.arrow_forward_ios_outlined,
                        leadingIcon: Icons.money,
                      ),SizedBox(
                        height: screenSize.height / 60,
                      ),
                      const UserTextPlacement(
                        text: 'Support',
                        surfixIcon: Icons.arrow_forward_ios_outlined,
                        leadingIcon: Icons.help,
                      ),SizedBox(
                        height: screenSize.height / 60,
                      ),
                      LogOut()
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
