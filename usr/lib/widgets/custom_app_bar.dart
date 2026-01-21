import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Icon(Icons.business, color: Theme.of(context).primaryColor, size: 30),
          const SizedBox(width: 10),
          Text(
            'UK Services',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        // Desktop Menu
        if (MediaQuery.of(context).size.width > 700) ...[
          _buildNavItem(context, 'Home', '/'),
          _buildNavItem(context, 'Services', '/services'),
          _buildNavItem(context, 'About', '/about'),
          _buildNavItem(context, 'Contact', '/contact'),
          const SizedBox(width: 20),
        ] else ...[
          // Mobile Menu Button
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Theme.of(context).primaryColor),
            onSelected: (value) {
              Navigator.pushNamed(context, value);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(value: '/', child: Text('Home')),
                const PopupMenuItem(value: '/services', child: Text('Services')),
                const PopupMenuItem(value: '/about', child: Text('About')),
                const PopupMenuItem(value: '/contact', child: Text('Contact')),
              ];
            },
          ),
        ],
      ],
    );
  }

  Widget _buildNavItem(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () {
        if (ModalRoute.of(context)?.settings.name != route) {
          Navigator.pushNamed(context, route);
        }
      },
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey[800],
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
