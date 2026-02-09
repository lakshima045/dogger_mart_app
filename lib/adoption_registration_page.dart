import 'package:flutter/material.dart';

class AdoptionRegistrationPage extends StatelessWidget {
  final String dogName;
  final String dogPrice;

  const AdoptionRegistrationPage({
    super.key,
    required this.dogName,
    required this.dogPrice,
  });

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF8E24AA);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Adopt $dogName',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          /// DOG SUMMARY CARD
          Card(
            color: const Color(0xFFF3E5F5), // Light purple background
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Icon(Icons.pets, color: primaryPurple, size: 30),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adopting $dogName',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Adoption Fee: $dogPrice',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.purple[900],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          /// REGISTRATION FORM
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Details',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  
                  _buildTextField(label: 'Full Name', icon: Icons.person_outline),
                  const SizedBox(height: 15),
                  _buildTextField(label: 'Phone Number', icon: Icons.phone_android, type: TextInputType.phone),
                  const SizedBox(height: 15),
                  _buildTextField(label: 'Email Address', icon: Icons.mail_outline, type: TextInputType.emailAddress),
                  const SizedBox(height: 15),
                  _buildTextField(label: 'Home Address', icon: Icons.home_outlined),
                  const SizedBox(height: 15),
                  _buildTextField(label: 'Pet Experience', icon: Icons.history, maxLines: 3),
                  
                  const SizedBox(height: 30),

                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () => _showSuccessDialog(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Submit Application',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          /// IMPORTANT NOTES
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.orange[50],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.orange.shade200),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.orange),
                    SizedBox(width: 10),
                    Text(
                      'Important Notes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text('• Process takes 2-3 days for approval'),
                Text('• Home visit might be required'),
                Text('• All dogs are vaccinated'),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    TextInputType type = TextInputType.text,
    int maxLines = 1,
  }) {
    return TextField(
      keyboardType: type,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: const Color(0xFF8E24AA)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFF8E24AA), width: 2),
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Success!'),
        content: Text('Your application for $dogName has been received.'),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator pops to return to Home
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: const Text('Back to Home', style: TextStyle(color: Color(0xFF8E24AA))),
          ),
        ],
      ),
    );
  }
}