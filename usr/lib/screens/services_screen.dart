import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/footer.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

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
                    'Our Services',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF00247D)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Comprehensive solutions tailored for the UK market',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildServiceCard(
                        title: 'IT Consultancy',
                        description: 'Expert IT strategy, digital transformation, and software development services.',
                        icon: Icons.computer,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Business Process Outsourcing',
                        description: 'Efficient back-office support, customer service, and data management.',
                        icon: Icons.people_outline,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Digital Marketing',
                        description: 'SEO, PPC, and social media strategies to grow your UK brand presence.',
                        icon: Icons.campaign,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Financial Services',
                        description: 'Accounting, bookkeeping, and financial planning assistance.',
                        icon: Icons.account_balance_wallet,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                    ],
                  );
                },
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard({required String title, required String description, required IconData icon, required double width}) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF00247D).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: const Color(0xFF00247D), size: 32),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[600], height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
