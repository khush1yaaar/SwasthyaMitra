import 'package:flutter/material.dart';
import 'package:project/model/doctor_model.dart'; // Replace with actual import

class DoctorDetailScreen extends StatelessWidget {
  final Doctor doctor; // Pass the Doctor object through the constructor

  const DoctorDetailScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor.name), // Display doctor's name in the app bar
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Doctor's Image
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      doctor.image, 
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Doctor's Name
                Text(
                  doctor.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                // Designation
                Text(
                  doctor.designation,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),

                // Divider
                const Divider(thickness: 1.0),

                // Specialization
                Text(
                  "Specialization: ${doctor.specialization}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // Visit Details
                Text(
                  "Visit Days: ${doctor.visitDetails}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // Availability
                Text(
                  "Available Time: ${doctor.availability}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // Divider
                const Divider(thickness: 1.0),

                // Contact Information
                Text(
                  "Contact: ${doctor.contactInfo}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // Consultation Fees
                Text(
                  "Consultation Fees: ₹${doctor.consultationFees.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // Location
                Text(
                  "Location: ${doctor.location}",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                // Experience
                Text(
                  "Experience: ${doctor.experience} years",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),

                // Divider
                const Divider(thickness: 1.0),

                // Patient Reviews
                const Text(
                  "Patient Reviews:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: doctor.patientReviews.map((review) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "- $review",
                        style: const TextStyle(fontSize: 16),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // Floating Button at Bottom Right
          Positioned(
            bottom: 5,
            right: 5,
            child: ElevatedButton(
              onPressed: () async {
                // Use url_launcher to open the booking link
                // final Uri url = Uri.parse('https://your-booking-link.com');
                // if (await canLaunchUrl(url)) {
                //   await launchUrl(url);
                // } else {
                //   throw 'Could not launch $url';
                // }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // Text color
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                elevation: 5, // Shadow for intuitiveness
              ),
              child: const Text(
                "Book Appointment",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
