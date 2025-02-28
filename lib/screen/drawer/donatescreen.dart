import 'package:flutter/material.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/textstyleclass.dart';
import 'package:url_launcher/url_launcher.dart';

class DonationDetails extends StatefulWidget {
  const DonationDetails({super.key});

  @override
  State<DonationDetails> createState() => _DonationDetailsState();
}

class _DonationDetailsState extends State<DonationDetails> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Donate',
          style: TextStyleClass.primaryFont600(
            16,
            Colors.white,
          ),
        ),
        backgroundColor: ColorClass.primaryColor, // Change to match your theme
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: ColorClass.secondaryColor, // Background color
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact',
              style: TextStyleClass.primaryFont600(
                16,
                Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => _makePhoneCall('+91 9946 666 139'),
              child: Text(
                'Phone: +91 9946 666 139',
                style: TextStyleClass.primaryFont600(
                  16,
                  Colors.blueAccent,
                ),
              ),
            ),
            Text(
              'Email: info@D4media',
              style: TextStyleClass.primaryFont300(
                16,
                Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Account Details:',
              style: TextStyleClass.primaryFont300(
                16,
                Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            _buildDetailRow('Trust Name', 'Dharmadhara Charitable Trust'),
            _buildDetailRow('A/C no', '141302000021698'),
            _buildDetailRow('Bank', 'Federal Bank'),
            _buildDetailRow('Branch', 'Mavoor Road'),
            _buildDetailRow('District', 'Kozhikode'),
            _buildDetailRow('State', 'Kerala, India'),
            _buildDetailRow('IFSC CODE', 'FDRL0001413'),
            _buildDetailRow('MICR CODE', '673049004'),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120, // Adjust width for alignment
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
