import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(40),
              color: Colors.grey[100],
              child: const Column(
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF00247D)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Get in touch with our team',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Flex(
                      direction: constraints.maxWidth > 800 ? Axis.horizontal : Axis.vertical,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Contact Info
                        Expanded(
                          flex: constraints.maxWidth > 800 ? 1 : 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Get in Touch',
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 30),
                              _buildContactItem(Icons.location_on, 'Headquarters', '123 Business Park, Tech City\nBangalore, India'),
                              const SizedBox(height: 20),
                              _buildContactItem(Icons.location_city, 'UK Office', '45 London Wall, City of London\nLondon, UK'),
                              const SizedBox(height: 20),
                              _buildContactItem(Icons.email, 'Email', 'info@ukbusinessservices.com'),
                              const SizedBox(height: 20),
                              _buildContactItem(Icons.phone, 'Phone', '+44 20 1234 5678 (UK)\n+91 80 1234 5678 (India)'),
                            ],
                          ),
                        ),
                        if (constraints.maxWidth > 800) const SizedBox(width: 60),
                        if (constraints.maxWidth <= 800) const SizedBox(height: 60),
                        
                        // Contact Form
                        Expanded(
                          flex: constraints.maxWidth > 800 ? 1 : 0,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Send us a message',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Full Name',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Email Address',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  maxLines: 4,
                                  decoration: const InputDecoration(
                                    labelText: 'Message',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 24),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF00247D),
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                    ),
                                    child: const Text('Send Message'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String title, String detail) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: const Color(0xFFCF142B), size: 24),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              detail,
              style: TextStyle(color: Colors.grey[700], height: 1.4),
            ),
          ],
        ),
      ],
    );
  }
}
