import 'package:flutter/material.dart';
import 'package:project/Screens/doctors_list_screen.dart';
import 'package:project/Screens/hospital_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,  // Align the content to start
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blue.shade100,
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Schemes for Patients',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Align the row items with space in between
                  children: [
                    _buildDoctorCard('Cardiologist'),
                    _buildDoctorCard('Gynecologist'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDoctorCard('Orthopedist'),
                    _buildDoctorCard('Dermatologist'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nearby Hospitals',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    _buildHospitalTile(context, 1),
                    _buildHospitalTile(context, 2),
                    _buildHospitalTile(context, 3),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to create doctor category cards
  Widget _buildDoctorCard(String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorsListScreen(title: title,),
          ),
        );
      },
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blue.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  // Method to create hospital list tiles with GestureDetector for navigation
  Widget _buildHospitalTile(BuildContext context, int hospitalID) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HospitalDetailScreen(hospitalID: hospitalID),
          ),
        );
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text('$hospitalID'),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
