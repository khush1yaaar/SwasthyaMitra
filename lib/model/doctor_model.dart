class Doctor {
  final String name;
  final String image;
  final String designation;
  final String specialization;
  final String visitDetails;
  final String availability;
  final String contactInfo;
  final double consultationFees;
  final String location;
  final int experience; // In years
  final List<String> patientReviews; // Could be a list of reviews
  final String bookingLink;

  Doctor({
    required this.name,
    required this.image,
    required this.designation,
    required this.specialization,
    required this.visitDetails,
    required this.availability,
    required this.contactInfo,
    required this.consultationFees,
    required this.location,
    required this.experience,
    required this.patientReviews,
    required this.bookingLink,
  });
}
