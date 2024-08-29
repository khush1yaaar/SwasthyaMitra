import 'package:flutter/material.dart';
import 'package:project/model/doctor_model.dart';

class DoctorDetailScreen extends StatelessWidget {
  final Doctor doctor;
  const DoctorDetailScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Light blue background
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // First Card (Doctor's Photo Card)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(doctor.image), // Replace with actual image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // Second Card (Blue Card)
            Positioned(
              top: 220,
              left: 20,
              right: 20,
              child: Card(
                color: Colors.blue.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 8,
                child: Container(
                  height: 450,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          doctor.name,
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          doctor.designation,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(156, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Third Card (White Card)
            Positioned(
              top: 320,
              left: 20,
              right: 20,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 8,
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.currency_rupee_outlined),
                              Text(
                                '${doctor.consultationFees}',
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Image.asset(
                                'lib/assets/hourglass.png',
                                height: 25,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '${doctor.experience} years',
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Experience',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(255, 128, 128, 128)),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Patient Reviews',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 230,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: doctor.patientReviews.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    doctor.patientReviews[index],
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                );
                              },
                            ),
                          ),
                          const Text(
                            'Working days',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(doctor.visitDetails),
                          const Text(
                            'Availability',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(doctor.availability),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Position the button correctly here
            Positioned(
              right: 20, // Adjust the positioning as needed
              bottom: 20, // Adjust the positioning as needed
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
    );
  }
}
