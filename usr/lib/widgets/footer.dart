import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A1A1A),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.business, color: Colors.white, size: 30),
              SizedBox(width: 10),
              Text(
                'UK Services',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Providing top-tier business services from India to the UK.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFooterLink(context, 'Home', '/'),
              _buildFooterLink(context, 'Services', '/services'),
              _buildFooterLink(context, 'About', '/about'),
              _buildFooterLink(context, 'Contact', '/contact'),
            ],
          ),
          const SizedBox(height: 30),
          const Divider(color: Colors.grey, thickness: 0.5),
          const SizedBox(height: 20),
          const Text(
            '© 2024 UK Business Services. All rights reserved.',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          title,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
