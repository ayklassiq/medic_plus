// import 'package:flutter/material.dart';
// import 'package:flutter_country_picker/flutter_country_picker.dart';
//
// class PhoneNumberTextField extends StatefulWidget {
//   const PhoneNumberTextField({super.key});
//
//   @override
//   _PhoneNumberTextFieldState createState() => _PhoneNumberTextFieldState();
// }
//
// class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
//    String? _selectedCountry;
//   final TextEditingController _phoneNumberController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: [
//           Container(
//             width: 60.0,
//             child: CountryPicker(
//               dense: false,
//               showFlag: true,
//               showDialingCode: false,
//               showName: false,
//               onChanged: ( country) {
//                 setState(() {
//                   _selectedCountry = country as String?;
//                 });
//               },
//               selectedCountry: _selectedCountry,
//             ),
//           ),
//           Expanded(
//             child: TextField(
//               controller: _phoneNumberController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter phone number',
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:country_code_picker/country_code_picker.dart';
// //
// // class PhoneNumberTextField extends StatefulWidget {
// //   @override
// //   _PhoneNumberTextFieldState createState() => _PhoneNumberTextFieldState();
// // }
// //
// // class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
// //   String _selectedCountryCode = '+1';
// //   final TextEditingController _phoneNumberController = TextEditingController();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Row(
// //         children: [
// //           Container(
// //             width: 60.0,
// //             child: CountryCodePicker(
// //               onChanged: (code) {
// //                 setState(() {
// //                   _selectedCountryCode = code as String;
// //                 });
// //               },
// //               initialSelection: 'US',
// //               favorite: ['+1', 'FR'],
// //               showFlag: false,
// //               showFlagDialog: true,
// //               showFlagMain: true,
// //               showOnlyCountryWhenClosed: false,
// //               padding: EdgeInsets.all(8),
// //               dialogSize: Size(250, 180),
// //               textStyle: TextStyle(color: Colors.blue),
// //             ),
// //           ),
// //           Expanded(
// //             child: TextField(
// //               controller: _phoneNumberController,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter phone number',
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffEEEFF0)
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 11.0),
        child: PhoneNumberInput(
          hint: 'Phone Number',
          initialCountry: 'NG',
          locale: 'it',
          countryListMode: CountryListMode.bottomSheet,
          contactsPickerPosition: ContactsPickerPosition.suffix,
        ),
      ),
    );
  }
}


