import 'package:flutter/material.dart';
class TextPlacement extends StatelessWidget {
  const TextPlacement({
    Key? key, required this.text,
  }) : super(key: key);

 final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffEEEFF0)
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left:11.0, top: 16,bottom: 16),
        child: Text(
          text
        ),
      ),
    );
  }
}
