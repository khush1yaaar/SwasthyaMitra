import 'package:project/models/doctor_model.dart';

// List of Doctors with actual details
// ignore: non_constant_identifier_names
List<Doctor> Doctors = [
  Doctor(
    name: "Dr. Manish Verma",
    image: "lib/assets/male_doctor.jpg",
    designation: "Senior Cardiologist",
    specialization: "Cardiology",
    visitDetails: "Monday, Wednesday, Friday",
    availability: "9:00 AM - 12:00 PM",
    contactInfo: "manish.verma@hospital.com",
    consultationFees: 500,
    location: "Room 101, City Hospital",
    experience: 15,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://cityhospital.com/appointments/manish_verma",
  ),
  Doctor(
    name: "Dr. Rashmi Sharma",
    image: "lib/assets/female_doctor.jpg",
    designation: "Dermatologist",
    specialization: "Dermatology",
    visitDetails: "Tuesday, Thursday",
    availability: "10:00 AM - 1:00 PM",
    contactInfo: "rashmi.sharma@hospital.com",
    consultationFees: 400,
    location: "Room 202, Sunshine Hospital",
    experience: 10,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://sunshinehospital.com/appointments/rashmi_sharma",
  ),
  Doctor(
    name: "Dr. Amit Singh",
    image: "lib/assets/male_doctor.jpg",
    designation: "Orthopedist",
    specialization: "Orthopedics",
    visitDetails: "Monday, Friday",
    availability: "2:00 PM - 5:00 PM",
    contactInfo: "amit.singh@hospital.com",
    consultationFees: 600,
    location: "Room 303, Apollo Hospital",
    experience: 12,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://apollohospital.com/appointments/amit_singh",
  ),
  Doctor(
    name: "Dr. Priya Desai",
    image: "lib/assets/female_doctor.jpg",
    designation: "Gynecologist",
    specialization: "Gynecology",
    visitDetails: "Wednesday, Saturday",
    availability: "11:00 AM - 3:00 PM",
    contactInfo: "priya.desai@hospital.com",
    consultationFees: 550,
    location: "Room 204, City Hospital",
    experience: 14,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://cityhospital.com/appointments/priya_desai",
  ),
  Doctor(
    name: "Dr. Rahul Mehta",
    image: "lib/assets/male_doctor.jpg",
    designation: "Pediatrician",
    specialization: "Pediatrics",
    visitDetails: "Monday, Thursday",
    availability: "9:00 AM - 12:00 PM",
    contactInfo: "rahul.mehta@hospital.com",
    consultationFees: 500,
    location: "Room 305, Sunshine Hospital",
    experience: 9,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://sunshinehospital.com/appointments/rahul_mehta",
  ),
  Doctor(
    name: "Dr. Neha Kapoor",
    image: "lib/assets/female_doctor.jpg",
    designation: "ENT Specialist",
    specialization: "ENT",
    visitDetails: "Tuesday, Friday",
    availability: "10:00 AM - 1:00 PM",
    contactInfo: "neha.kapoor@hospital.com",
    consultationFees: 450,
    location: "Room 101, Apollo Hospital",
    experience: 11,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://apollohospital.com/appointments/neha_kapoor",
  ),
  Doctor(
    name: "Dr. Anil Gupta",
    image: "lib/assets/male_doctor.jpg",
    designation: "Neurologist",
    specialization: "Neurology",
    visitDetails: "Monday, Wednesday",
    availability: "2:00 PM - 6:00 PM",
    contactInfo: "anil.gupta@hospital.com",
    consultationFees: 700,
    location: "Room 102, City Hospital",
    experience: 18,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://cityhospital.com/appointments/anil_gupta",
  ),
  Doctor(
    name: "Dr. Pooja Jain",
    image: "lib/assets/female_doctor.jpg",
    designation: "Psychiatrist",
    specialization: "Psychiatry",
    visitDetails: "Tuesday, Thursday",
    availability: "12:00 PM - 3:00 PM",
    contactInfo: "pooja.jain@hospital.com",
    consultationFees: 650,
    location: "Room 203, Sunshine Hospital",
    experience: 13,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://sunshinehospital.com/appointments/pooja_jain",
  ),
  Doctor(
    name: "Dr. Rakesh Bhatia",
    image: "lib/assets/male_doctor.jpg",
    designation: "Gastroenterologist",
    specialization: "Gastroenterology",
    visitDetails: "Wednesday, Saturday",
    availability: "11:00 AM - 2:00 PM",
    contactInfo: "rakesh.bhatia@hospital.com",
    consultationFees: 600,
    location: "Room 306, Apollo Hospital",
    experience: 16,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://apollohospital.com/appointments/rakesh_bhatia",
  ),
  Doctor(
    name: "Dr. Sneha Patel",
    image: "lib/assets/female_doctor.jpg",
    designation: "Oncologist",
    specialization: "Oncology",
    visitDetails: "Monday, Thursday",
    availability: "9:00 AM - 12:00 PM",
    contactInfo: "sneha.patel@hospital.com",
    consultationFees: 800,
    location: "Room 104, City Hospital",
    experience: 20,
    patientReviews: [
      "Dr. Verma was incredibly thorough during my consultation. He explained everything in detail and made sure I understood my condition and treatment options. His expertise is unmatched, and I felt reassured knowing I was in capable hands.",
      "I had a wonderful experience with Dr. Manish Verma. Not only is he extremely knowledgeable, but he also took the time to listen to my concerns. He is very approachable and made me feel comfortable discussing my health issues."
    ],
    bookingLink: "https://cityhospital.com/appointments/sneha_patel",
  ),
];

// Fetch doctor by name
Doctor? getDoctorByName(String name) {
  return Doctors.firstWhere((doctor) => doctor.name == name);
}
