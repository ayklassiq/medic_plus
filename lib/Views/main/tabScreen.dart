import 'package:flutter/material.dart';
import 'package:medic_plus/Views/main/Appointments_screen.dart';
import 'package:medic_plus/Views/main/clinic_screen.dart';
import 'package:medic_plus/Views/main/homePage_scren.dart';
import 'package:medic_plus/Views/main/prescription_Screen.dart';

import '../widgets/bottom_nav_bar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);
  static const routeName = '/TabScreen-screen';


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': const HomePage(), 'title': 'Home'},
    {'page': const Appointment(), 'title': 'Appointment'},
    {'page': const PrescriptionScreen(), 'title': 'prescription'},
    {'page': const SelectClinic(), 'title': 'Clinic'},
  ];
  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          body: _pages[_selectedPageIndex]['page'] as Widget,
          // bottomNavigationBar: BottomNavigationBar(
          //   onTap: _selectedPage,
          //   backgroundColor: Theme.of(context).primaryColor,
          //   unselectedItemColor: Colors.white,
          //   selectedItemColor: Theme.of(context).accentColor,
          //   currentIndex: _selectedPageIndex,
          //   items: const [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.category),
          //       label: 'Categories',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.star),
          //       label: 'Favorite',
          //     )
          //   ],
          // ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Color(0xFF6200EE),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Color(0xffBDBDBD),
            selectedFontSize: 14,
            currentIndex: _selectedPageIndex,
            onTap: _selectedPage,
            unselectedFontSize: 14,

            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Appointments',
                icon: Icon(Icons.document_scanner_outlined),
              ),
              BottomNavigationBarItem(
                label: 'prescription',
                icon: Icon(Icons.file_copy_outlined),
              ),
              BottomNavigationBarItem(
                label: 'clinics',
                icon: Icon(Icons.show_chart),
              ),
            ],
          ),
        ));
  }
}
