import 'package:educational_mobile/screens/home_screen.dart';
import 'package:educational_mobile/screens/practice_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  CustomBottomNavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildNavItem(context, Icons.home, selectedIndex == 0, 'Home'),
        const SizedBox(width: 10),
        _buildNavItem(context, Icons.school, selectedIndex == 1, 'School'),
        const SizedBox(width: 10),
        _buildNavItem(context, Icons.article, selectedIndex == 2, 'Practice'),
      ],
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    IconData icon,
    bool isSelected,
    String value,
  ) {
    return InkWell(
      onTap: () {
        switch (value) {
          case 'Home':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
            break;
          case 'School':
            // Do nothing for School
            break;
          case 'Practice':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PracticeScreen()),
            );
            break;
          default:
            break;
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff232323),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Icon(icon, color: Colors.white),
              isSelected
                  ? Text(
                    value,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
