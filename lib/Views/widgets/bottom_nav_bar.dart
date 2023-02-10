import 'package:flutter/material.dart';
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // backgroundColor: Color(0xFF6200EE),
      selectedItemColor: Colors.blue,
      unselectedItemColor: Color(0xffBDBDBD),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
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
    );
  }
}