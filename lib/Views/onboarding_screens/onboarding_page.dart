import 'package:flutter/material.dart';
import 'package:medic_plus/Views/onboarding_screens/sign_up_page.dart';

import '../widgets/button.dart';
import 'login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);
  static const routeName = '/onboarding-screen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 52,
            ),
            const Center(
              child: SizedBox(
                height: 43,
                width: 151,
                child: Text(
                  'MEDICPLUS',
                  style: TextStyle(
                    color: Color(0xff6583ED),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 25,
            ),
            Image.asset("assets/images/onboarding.png"),
            SizedBox(
              height: screenSize.height / 15,
            ),
            const SizedBox(
              height: 23,
              width: 279,
              child: Center(
                child: Text(
                  'See a Doctor on the go',
                  style: TextStyle(
                    color: Color(0xff6583ED),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              width: 253,
              child: Center(
                child: Text(
                  'Stay on top of your health with easy access to different health practitioners',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height / 15,
            ),
            SizedBox(
                height: 46,
                width: 311,
                child: NavigationButton(
                  color: const Color(0xff6583ED),
                  text: 'Create an account',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const SignUpPage()));

                  },
                  textColor: const Color(0xffffffff),
                )),
            SizedBox(
              height: screenSize.height / 50,
            ),
            SizedBox(
                height: 46,
                width: 311,
                child: NavigationButton(
                  color: const Color(0xffffffff),
                  text: 'login',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const LoginPage()));
                  },
                  textColor: const Color(0xff6583ed),
                )),
            SizedBox(
              height: screenSize.height / 20,
            ),
          ],
        ),
      ),
    );
  }
}
