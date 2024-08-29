import 'package:flutter/material.dart';

class DoctorsListScreen extends StatefulWidget {
  final String title;
  const DoctorsListScreen({super.key, required this.title});

  @override
  State<DoctorsListScreen> createState() => _DoctorsListScreenState();
}

class _DoctorsListScreenState extends State<DoctorsListScreen> {
  final List<Map<String, String>> dummyClinics = generateDummyClinics(20); // Generate 20 dummy clinics

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: dummyClinics.map((clinic) => buildDoctorCard(clinic)).toList(),
        ),
      ),
    );
  }

  // Function to build doctor clinic cards
  Widget buildDoctorCard(Map<String, String> clinic) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clinic['name'] ?? 'Unknown Clinic',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(clinic['specialization'] ?? 'Unknown Specialization'),
            const SizedBox(height: 8),
            Text('Location: ${clinic['location'] ?? 'Unknown Location'}'),
          ],
        ),
      ),
    );
  }
}

// Function to generate dummy clinics
List<Map<String, String>> generateDummyClinics(int count) {
  List<Map<String, String>> clinics = [];
  for (int i = 0; i < count; i++) {
    clinics.add({
      'name': 'Clinic ${i + 1}',
      'specialization': i % 2 == 0 ? 'Cardiologist' : 'Dermatologist',
      'location': 'Location ${i + 1}',
    });
  }
  return clinics;
}
