import 'package:flutter/material.dart';
import 'package:medic_plus/Views/Schedule_Appointment/schedule_screen.dart';
import 'package:medic_plus/Views/main/clinic_screen.dart';
import 'package:medic_plus/Views/main/homePage_scren.dart';
import 'package:medic_plus/Views/Schedule_Appointment/symptoms_screen.dart';
import 'package:medic_plus/Views/main/prescription_Screen.dart';
import 'package:medic_plus/Views/main/userprofile_screen.dart';
import 'package:medic_plus/Views/onboarding_screens/login_page.dart';
import 'package:medic_plus/Views/onboarding_screens/onboarding_page.dart';
import 'package:medic_plus/Views/onboarding_screens/sign_up_page.dart';
import 'package:medic_plus/Views/onboarding_screens/splash_page.dart';

import 'Views/Schedule_Appointment/Your_appointment_Screen.dart';
import 'Views/Schedule_Appointment/confirm_appointment_screen.dart';
import 'Views/Schedule_Appointment/phone_call_screen.dart';
import 'Views/Schedule_Appointment/select_doctor_screen.dart';
import 'Views/Schedule_Appointment/session_complete_screen.dart';
import 'Views/main/Appointments_screen.dart';
import 'Views/main/notificationScreen.dart';
import 'Views/main/tabScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const SplashPage(),
      routes: {
        PrescriptionScreen.routeName:(ctx)=>const PrescriptionScreen(),
        Appointment.routeName:(ctx)=> const Appointment(),
        SelectClinic.routeName:(ctx)=> const SelectClinic(),
        HomePage.routeName:(ctx)=> const HomePage(),
        NotificationScreen.routeName:(ctx)=> const NotificationScreen()  ,
        UserProfileScreen.routeName:(ctx)=>const UserProfileScreen(),
        LoginPage.routeName:(ctx)=>const LoginPage(),
        OnboardingPage.routeName:(ctx)=>const OnboardingPage(),
        SignUpPage.routeName:(ctx)=>const SignUpPage(),
        SplashPage.routeName:(ctx)=>const SplashPage(),
        ConfirmAppointment.routeName:(ctx)=>const ConfirmAppointment(),
        PhoneCall.routeName:(ctx)=>const PhoneCall(),
        ScheduleScreen.routeName:(ctx)=>const ScheduleScreen(),
        SelectDoctor.routeName:(ctx)=>const SelectDoctor(),
        CompleteSession.routeName:(ctx)=>const CompleteSession(),
        AppointmentForm.routeName:(ctx)=>const AppointmentForm(),
        YourAppointment.routeName:(ctx)=>const YourAppointment()





      },
    );
  }
}

