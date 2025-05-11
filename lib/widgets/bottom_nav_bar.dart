import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(
          top: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(context, Icons.home, true),
          _buildNavItem(context, Icons.school, false),
          _buildNavItem(context, Icons.article, false),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, IconData icon, bool isSelected) {
    return IconButton(
      icon: Icon(
        icon,
        color: isSelected
            ? Theme.of(context).colorScheme.primary
            : Colors.white.withOpacity(0.5),
      ),
      onPressed: () {},
    );
  }
}