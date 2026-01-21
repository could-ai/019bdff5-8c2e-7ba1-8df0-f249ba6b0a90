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
                    'Specialized financial and advisory solutions for the UK market',
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
                        title: 'Virtual CFO',
                        description: 'Strategic financial leadership on demand. We handle budgeting, forecasting, and high-level financial planning to guide your business growth.',
                        icon: Icons.trending_up,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Accounting',
                        description: 'Comprehensive bookkeeping and accounting services tailored to UK standards, ensuring your books are accurate and up-to-date.',
                        icon: Icons.account_balance_wallet,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Payroll',
                        description: 'End-to-end payroll processing ensuring full compliance with HMRC regulations, pension schemes, and timely employee payments.',
                        icon: Icons.payments,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Tax Compliance',
                        description: 'Expert handling of VAT returns, Corporation Tax, and regulatory filings to ensure you remain fully compliant with UK tax laws.',
                        icon: Icons.gavel,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Financial Modelling',
                        description: 'Robust financial models for valuation, investment analysis, and scenario planning to support critical business decisions.',
                        icon: Icons.bar_chart,
                        width: constraints.maxWidth > 900 ? 400 : constraints.maxWidth,
                      ),
                      _buildServiceCard(
                        title: 'Business Advisory',
                        description: 'Strategic guidance to optimize operations, improve efficiency, and drive sustainable business growth in the competitive UK market.',
                        icon: Icons.lightbulb_outline,
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
