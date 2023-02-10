import 'package:flutter/material.dart';

class NotifyWidget extends StatelessWidget {
   NotifyWidget({ required this.image, required this.text});
String text;
String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(image),

        const SizedBox(
          width: 16,
        ),

         SizedBox(
          height: 51,
          width: 220,
          child: Text( text,
            style: const TextStyle(
              color: Color(0xff797982),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
