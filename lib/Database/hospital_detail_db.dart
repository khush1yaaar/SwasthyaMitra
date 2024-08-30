import 'package:flutter/material.dart';
import 'package:project/database/doctor_detail.db.dart';
import 'package:project/models/hospital_model.dart';

List<Hospital> Hospitals = [
  Hospital(
    images: [
      Image.asset('lib/assets/hospital1.jpg'),
      Image.asset('lib/assets/hospital5.jpg'),
      Image.asset('lib/assets/hospital3.jpg')
    ],
    id: 1,
    name: "Green Valley Hospital",
    address: "789 Green Valley Road, Greenville",
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
    name: "Sunrise Medical Center",
    address: "456 Morning Star Lane, Sunrise City",
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
    name: "Healing Touch Hospital",
    address: "25 Wellness Avenue, Newtown",
    staff: {
      "Dr. Amit Singh": getDoctorByName("Dr. Amit Singh")!,
      "Dr. Neha Kapoor": getDoctorByName("Dr. Neha Kapoor")!,
      "Dr. Rakesh Bhatia": getDoctorByName("Dr. Rakesh Bhatia")!,
    },
    review: 4,
  ),
  Hospital(
    images: [
      Image.asset('lib/assets/hospital1.jpg'),
      Image.asset('lib/assets/hospital5.jpg'),
      Image.asset('lib/assets/hospital3.jpg')
    ],
    id: 4,
    name: "MetroCare Hospital",
    address: "123 Urban Road, Cityville",
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
    id: 5,
    name: "Sunshine Medical Hub",
    address: "32 Bright Street, Sunnytown",
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
    id: 6,
    name: "Fortis Care Hospital",
    address: "44 Health Drive, Metropolis",
    staff: {
      "Dr. Amit Singh": getDoctorByName("Dr. Amit Singh")!,
      "Dr. Neha Kapoor": getDoctorByName("Dr. Neha Kapoor")!,
      "Dr. Rakesh Bhatia": getDoctorByName("Dr. Rakesh Bhatia")!,
    },
    review: 4,
  ),
  Hospital(
    images: [
      Image.asset('lib/assets/hospital1.jpg'),
      Image.asset('lib/assets/hospital5.jpg'),
      Image.asset('lib/assets/hospital3.jpg')
    ],
    id: 7,
    name: "Wellness Valley Hospital",
    address: "10 Serenity Road, Valleyview",
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
    id: 8,
    name: "Brightside Hospital",
    address: "678 Sunshine Blvd, Sunnytown",
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
    id: 9,
    name: "NovaCare Hospital",
    address: "45 Star Lane, Starlight City",
    staff: {
      "Dr. Amit Singh": getDoctorByName("Dr. Amit Singh")!,
      "Dr. Neha Kapoor": getDoctorByName("Dr. Neha Kapoor")!,
      "Dr. Rakesh Bhatia": getDoctorByName("Dr. Rakesh Bhatia")!,
    },
    review: 2,
  ),
  Hospital(
    images: [
      Image.asset('lib/assets/hospital1.jpg'),
      Image.asset('lib/assets/hospital5.jpg'),
      Image.asset('lib/assets/hospital3.jpg')
    ],
    id: 10,
    name: "Healthy Horizons Hospital",
    address: "202 Health Ave, Healthville",
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
    id: 11,
    name: "Golden Gate Hospital",
    address: "800 Golden Gate, Gateway City",
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
    id: 12,
    name: "Infinity Medical Center",
    address: "25 Cosmic Avenue, Galaxy City",
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
