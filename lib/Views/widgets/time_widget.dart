import 'package:flutter/material.dart';

class TimeSelector extends StatefulWidget {
  const TimeSelector({Key? key}) : super(key: key);

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  String _selectedItem = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Time',
          style: TextStyle(
              color: Color(0xff45589D),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(width: 20,),
        SizedBox(
          height: 32,
          width: 21,
          child: TextFormField(
            decoration: const InputDecoration(hintText: '00'),
          ),
        ),
        SizedBox(width: 15,),

        const Text(
          ':',
          style: TextStyle(
              color: Color(0xff797982),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(width: 13,),

        SizedBox(
          height: 32,
          width: 21,
          child: TextFormField(
            decoration: const InputDecoration(hintText: '00'),
          ),
        ),
        SizedBox(width: 19,),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
              items: const [
                DropdownMenuItem(
                  child: Text("am"),
                  value: "Option 1",
                ),
                DropdownMenuItem(
                  child: Text("pm"),
                  value: "Option 2",
                ),

              ],
              onChanged: (value) {
                setState(() {
                  _selectedItem = value!;
                });
              },
              value: _selectedItem,
            ),
          ],
        ),
      ],
    );
  }
}
