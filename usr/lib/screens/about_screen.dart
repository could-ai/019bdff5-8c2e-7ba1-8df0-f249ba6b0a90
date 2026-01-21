import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(60),
              color: const Color(0xFF00247D),
              child: const Column(
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bridging Borders, Building Success',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Who We Are',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF333333)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'We are a premier business services provider operating from India, dedicated to serving clients across the United Kingdom. With a deep understanding of both Indian operational excellence and UK market standards, we offer a unique advantage to businesses looking to optimize costs without compromising on quality.',
                      style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Our Mission',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF333333)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'To empower UK businesses by providing scalable, high-quality, and cost-effective solutions through our global delivery model. We strive to be more than just a service provider; we aim to be a strategic partner in your growth journey.',
                      style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          child: _buildStat('500+', 'Projects Delivered'),
                        ),
                        Expanded(
                          child: _buildStat('50+', 'UK Clients'),
                        ),
                        Expanded(
                          child: _buildStat('24/7', 'Support'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFFCF142B)),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
