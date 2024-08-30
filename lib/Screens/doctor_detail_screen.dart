import 'package:flutter/material.dart';
import 'package:project/models/doctor_model.dart';

class DoctorDetailScreen extends StatelessWidget {
  final Doctor doctor;
  const DoctorDetailScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar for Doctor's Image
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                doctor.image, // Replace with actual image path
                fit: BoxFit.cover,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(0),
              ),
            ),
            backgroundColor: Colors.blue.shade500,
            elevation: 8,
          ),

          // Sliver for Name and Designation with Blue Background
          SliverToBoxAdapter(
            child: Container(
              color: Colors.blue.shade500,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    doctor.designation,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // SliverList for Scrollable Content (White Card Information)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Consultation Fees and Experience
                      Row(
                        children: [
                          const Icon(Icons.currency_rupee_outlined),
                          Text(
                            '${doctor.consultationFees}',
                            style: const TextStyle(fontSize: 25),
                          ),
                          const Spacer(),
                          Image.asset(
                            'lib/assets/hourglass.png',
                            height: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${doctor.experience} years',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Experience',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Patient Reviews Section without separate scrolling
                      const Text(
                        'Patient Reviews',
                        style: TextStyle(fontSize: 20),
                      ),
                      Column(
                        children: doctor.patientReviews.map((review) {
                          return ListTile(
                            title: Text(
                              review,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),

                      // Working Days
                      const Text(
                        'Working days',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(doctor.visitDetails),
                      const SizedBox(height: 16),

                      // Availability
                      const Text(
                        'Availability',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(doctor.availability),
                      const SizedBox(height: 16),

                      // Book Appointment Button
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your onPressed action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Button background color
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
                            textStyle: const TextStyle(
                              fontSize: 16, // Font size for the text
                              fontWeight: FontWeight.bold, // Text weight
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8), // Rounded corners
                            ),
                          ),
                          child: const Text('Book an Appointment', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
