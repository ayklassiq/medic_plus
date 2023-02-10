import 'package:flutter/material.dart';
class BlankTextField extends StatelessWidget {
  const BlankTextField({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffEEEFF0)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:11.0),
        child: TextFormField(
          decoration: const InputDecoration(
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return "Please enter your details";
            }
            return null;
          },
        ),
      ),
    );
  }
}
