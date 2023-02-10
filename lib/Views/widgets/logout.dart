import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffEEEFF0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 11.0, top: 11, bottom: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text('Log out',
                style: TextStyle(
                  color: Color(0xff797982),
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),),
            ),
            SizedBox(
              width: 8.5,
            ),
            Icon(
              Icons.logout,
              color: Color(0xff000000),
            ),
          ],
        ),
      ),
    );
  }
}
