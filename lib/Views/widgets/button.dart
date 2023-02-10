import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final Color color;

  final Color textColor;
  final VoidCallback onPressed;

  NavigationButton({
    required this.text,
    required this.textColor,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     decoration:   BoxDecoration(
    //     color: color,),
    //   child: ElevatedButton(onPressed: onPressed, child: Text(text,style:  TextStyle(
    //       color: textColor,
    //       fontSize: 16,
    //       fontWeight: FontWeight.w700)),
    //
    //   ),
    // );
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: textColor, width: 2.0),
        ),

        // height: height,
        // width: 366,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
