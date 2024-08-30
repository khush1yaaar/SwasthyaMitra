import 'package:flutter/material.dart'; 

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              child: Center(child: Text('Image')),
            ),
            Text('Name'),
            Text('+91 xxxxxxxxxx'),
            Text('Ayushman Number'),
          ],
        ),
      ),
    );
  }
}