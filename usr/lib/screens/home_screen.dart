import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              decoration: const BoxDecoration(
                color: Color(0xFF00247D),
                image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80'),
                  fit: BoxFit.cover,
                  opacity: 0.2,
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Premium Financial Solutions\nBridging India & UK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Expert Virtual CFO, Accounting, and Strategic Advisory partners for your UK business.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFCF142B),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    child: const Text('Get Started'),
                  ),
                ],
              ),
            ),

            // Features Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Why Choose Us',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF333333)),
                  ),
                  const SizedBox(height: 40),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        alignment: WrapAlignment.center,
                        children: [
                          _buildFeatureCard(
                            icon: Icons.public,
                            title: 'Global Reach',
                            description: 'Seamlessly connecting Indian financial expertise with UK market demands.',
                            width: constraints.maxWidth > 800 ? 300 : constraints.maxWidth,
                          ),
                          _buildFeatureCard(
                            icon: Icons.verified_user,
                            title: 'UK Compliance',
                            description: 'Fully compliant with HMRC regulations and UK accounting standards.',
                            width: constraints.maxWidth > 800 ? 300 : constraints.maxWidth,
                          ),
                          _buildFeatureCard(
                            icon: Icons.trending_up,
                            title: 'Cost Effective',
                            description: 'High-quality financial services at competitive rates for maximum ROI.',
                            width: constraints.maxWidth > 800 ? 300 : constraints.maxWidth,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),

            // Call to Action
            Container(
              color: Colors.grey[100],
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Ready to optimize your finances?',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/services');
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      side: const BorderSide(color: Color(0xFF00247D), width: 2),
                    ),
                    child: const Text(
                      'Explore Our Services',
                      style: TextStyle(fontSize: 16, color: Color(0xFF00247D)),
                    ),
                  ),
                ],
              ),
            ),

            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({required IconData icon, required String title, required String description, required double width}) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Icon(icon, size: 48, color: const Color(0xFF00247D)),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: TextStyle(color: Colors.grey[600], height: 1.5),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
