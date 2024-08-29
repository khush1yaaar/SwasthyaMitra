import 'package:flutter/material.dart';
import 'package:project/Database/doctor_detail.db.dart';
import 'package:project/model/hospital_model.dart';

// List of Hospitals with actual doctor names
// ignore: non_constant_identifier_names
List<Hospital> Hospitals = [
  Hospital(
    images: [
      Image.asset('lib/assets/hospital1.jpg'),
      Image.asset('lib/assets/hospital5.jpg'),
      Image.asset('lib/assets/hospital3.jpg')
    ],
    id: 1,
    name: "City Hospital",
    address: "123 Main Street, Cityville",
    staff: {
      "Dr. Manish Verma": getDoctorByName("Dr. Manish Verma")!,
      "Dr. Priya Desai": getDoctorByName("Dr. Priya Desai")!,
      "Dr. Anil Gupta": getDoctorByName("Dr. Anil Gupta")!,
      "Dr. Sneha Patel": getDoctorByName("Dr. Sneha Patel")!,
    },
    review: 4,
  ),
  Hospital(
    images: [
      Image.asset('lib/assets/hospital2.jpg'),
      Image.asset('lib/assets/hospital5.jpg'),
      Image.asset('lib/assets/hospital3.jpg')
    ],
    id: 2,
    name: "Sunshine Hospital",
    address: "456 Sunshine Blvd, Sunnytown",
    staff: {
      "Dr. Rashmi Sharma": getDoctorByName("Dr. Rashmi Sharma")!,
      "Dr. Rahul Mehta": getDoctorByName("Dr. Rahul Mehta")!,
      "Dr. Pooja Jain": getDoctorByName("Dr. Pooja Jain")!,
    },
    review: 5,
  ),
  Hospital(
    images: [
      Image.asset('lib/assets/hospital3.jpg'),
      Image.asset('lib/assets/hospital5.jpg'),
      Image.asset('lib/assets/hospital2.jpg')
    ],
    id: 3,
    name: "Apollo Hospital",
    address: "789 Apollo Avenue, Metropolis",
    staff: {
      "Dr. Amit Singh": getDoctorByName("Dr. Amit Singh")!,
      "Dr. Neha Kapoor": getDoctorByName("Dr. Neha Kapoor")!,
      "Dr. Rakesh Bhatia": getDoctorByName("Dr. Rakesh Bhatia")!,
    },
    review: 4,
  ),
];

// Fetch hospital by ID
Hospital? getHospitalById(int id) {
  return Hospitals.firstWhere((hospital) => hospital.id == id);
}
