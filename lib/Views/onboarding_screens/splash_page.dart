import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medic_plus/Views/onboarding_screens/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const routeName = '/splash-screen';


  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const OnboardingPage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 876,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff6583ED),
        ),
        child: const Center(
          child: Text(
            'MEDICPLUS',
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
