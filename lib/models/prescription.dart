import 'package:flutter/material.dart';

class Prescription {
  final String date;
  final String title;
  final String prescription;
  final String doctor;

  Prescription({
    required this.date,
    required this.title,
    required this.prescription,
    required this.doctor,
  });
}
