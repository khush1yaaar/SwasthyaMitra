import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project/Database/hospital_detail_db.dart';
import 'package:project/Screens/doctor_detail_screen.dart';
import 'package:project/model/hospital_model.dart';

class HospitalDetailScreen extends StatefulWidget {
  final int hospitalID;
  const HospitalDetailScreen({super.key, required this.hospitalID});

  @override
  State<HospitalDetailScreen> createState() => _HospitalDetailScreenState();
}

class _HospitalDetailScreenState extends State<HospitalDetailScreen> {
  Hospital? hospital;

  @override
  void initState() {
    super.initState();
    hospital = getHospitalById(widget.hospitalID); // Fetch the hospital data
  }

  @override
  Widget build(BuildContext context) {
    if (hospital == null) {
      return Scaffold(
        appBar: AppBar(title: const Text("Hospital Details")),
        body: const Center(child: Text("Hospital not found")),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text(hospital!.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Carousel for images
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: hospital!.images.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: image,
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              // Address
              Text(
                'Address: ${hospital!.address}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Staff Availability
              const Text(
                "Staff Availability",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: hospital!.staff.entries.map((entry) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DoctorDetailScreen(doctor: entry.value,),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 370,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(150, 95, 193, 239)
                                  .withOpacity(
                                      0.5), // Light blue shadow with transparency
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(0,
                                  3), // Horizontal and vertical shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "${entry.key} \n Availability - ${entry.value.availability}",
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(width: 50,),
                              const Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              // Review with stars
              const Text(
                "Review",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < hospital!.review ? Icons.star : Icons.star_border,
                    color: Colors.yellow[700],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
