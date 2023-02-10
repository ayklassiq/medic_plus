import 'package:flutter/material.dart';

import 'clinic_dummy.dart';

class ClinicList extends StatelessWidget {
ClinicList(this.title,this.image,this.description);
String image;
String description;
String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:5,),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,          children: [

          Image.asset(image),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff45589D),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 56,
              width: 131,
              child: Text(
                description,
                style: const TextStyle(
                  color: Color(0xff797982),
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ClinicCategories extends StatelessWidget {
  const ClinicCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(15),
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

            maxCrossAxisExtent: 200,
            childAspectRatio: 4 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: Dummy_Clinic
            .map(
              (clinicData) => ClinicList(
              clinicData.title,
              clinicData.image,
              clinicData.description
          ),
        )
            .toList());
  }
}