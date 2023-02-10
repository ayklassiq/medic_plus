import 'package:flutter/material.dart';

class UserTextPlacement extends StatelessWidget {
  const UserTextPlacement({
    Key? key,
    required this.text,
    required this.leadingIcon,
    required this.surfixIcon,
  }) : super(key: key);

  final String text;
  final IconData leadingIcon;
  final IconData surfixIcon;
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  leadingIcon,
                  color: const Color(0xff000000),
                ),
                const SizedBox(
                  width: 8.5,
                ),
                Text(text,
                  style: const TextStyle(
                    color: Color(0xff797982),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Icon(
              surfixIcon,
              color: const Color(0xff000000),
            ),
          ],
        ),
      ),
    );
  }
}
