import 'package:flutter/material.dart';
class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
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
            suffixIcon: Icon(Icons.remove_red_eye,color: Color(0xff6583ED),),

            hintText: "Enter your password",
          ),
          obscureText: true,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please enter your password";
            }
            return null;
          },
        ),
      ),
    );
  }
}
