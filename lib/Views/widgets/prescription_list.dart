import 'package:flutter/material.dart';
import 'package:medic_plus/Views/widgets/start_rating.dart';

import 'dummy_Doctors.dart';
import 'prescription_dummy.dart';

class PrescriptionList extends StatelessWidget {
  PrescriptionList(  this.doctor,this.date,  this.title, this.prescription);
  String date;
  String doctor;
  String title;
  String prescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:5,bottom: 15,right: 30,left: 30,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff45589D),
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  color: Color(0xff797982),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
           Text(
            prescription,
            style: const TextStyle(
              color: Color(0xff797982),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          Text(
            doctor,
            style: const TextStyle(
              color: Color(0xff797982),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),

        ],
      ),
    );
  }
}

class PrescriptionCategory extends StatelessWidget {
  const PrescriptionCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Dummy_Prescription.length,
      itemBuilder: (BuildContext context, int index) {
        return PrescriptionList(
          Dummy_Prescription[index].doctor,
          Dummy_Prescription[index].date,
          Dummy_Prescription[index].title,
          Dummy_Prescription[index].prescription,
        );
      },
    );
  }
}
