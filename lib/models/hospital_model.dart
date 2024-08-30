import 'package:flutter/material.dart';
import 'package:project/models/doctor_model.dart';

class Hospital {
  late List<Image> images;
  late int id;
  late String name;
  late String address;
  late Map<String, Doctor> staff;
  late int review;

  Hospital({
    required this.images,
    required this.id,
    required this.name,
    required this.address,
    required this.staff,
    required this.review,
  });
}
