import 'package:flutter/material.dart';
import 'package:medic_plus/Views/Schedule_Appointment/schedule_screen.dart';
import 'package:medic_plus/Views/widgets/start_rating.dart';

import 'dummy_Doctors.dart';

class DoctorList extends StatefulWidget {
  DoctorList(  this.name,  this.image, this.rate);
   String name;
   String image;
   double rate;

  @override
  State<DoctorList> createState() => _DoctorListState();

}


class _DoctorListState extends State<DoctorList> {
  Color _color = Colors.white;
  void _changeColor() {
    setState(() {
      _color = _color == Colors.white ? Color(0xffCDD8FE) : Colors.white;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30,left: 30,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: GestureDetector(
        onTap: (){
          _changeColor();

        },
        child: Container(
          height: 200,
          width: 200,
          color: _color,


          child: Column(
            children: [

                CircleAvatar(
                  radius: 30.0,
                  child: ClipOval(
                    child: Image.asset(widget.image),
                  ),
                ),
              Text(
                widget.name,
                style: const TextStyle(
                  color: Color(0xff45589D),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            StarRating(rate: widget.rate)
            ],
          ),
        ),
      ),
    );
  }
}
 class DoctorCategories extends StatelessWidget {
   const DoctorCategories({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return GridView(
         padding: EdgeInsets.all(15),
         shrinkWrap: true,
         // physics: NeverScrollableScrollPhysics,
         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

             maxCrossAxisExtent: 200,
             childAspectRatio: 3 / 2,
             crossAxisSpacing: 5,
             mainAxisSpacing: 5),
         children: Dummy_Doctors
             .map(
               (docData) => DoctorList(
               docData.name,
               docData.image,
               docData.rate
           ),
         )
             .toList());
   }
 }
