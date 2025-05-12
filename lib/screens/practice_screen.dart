import 'package:educational_mobile/screens/quiz_screen.dart';
import 'package:educational_mobile/theme/app_theme.dart';
import 'package:educational_mobile/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Practice',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Outfit',

                        fontSize: 25,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Challenge your\nKnowledge',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Text(
                  'type of question',
                  style: TextStyle(
                    color: Colors.white60,
                    fontFamily: 'Outfit',
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 24),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: [
                    _buildOptionCard(
                      context,
                      icon: Icons.shuffle,
                      title: 'Random',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    _buildOptionCard(
                      context,
                      icon: Icons.tag,
                      title: 'Exam Number',
                      color: Colors.white24,
                    ),
                    _buildOptionCard(
                      context,
                      icon: Icons.category,
                      title: 'Topic',
                      color: Colors.white24,
                    ),
                    _buildOptionCard(
                      context,
                      icon: Icons.format_list_bulleted,
                      title: 'In a row',
                      color: Colors.white24,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mistakes practice',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Practice more the very exam exercises which you\'re doing worse. You\'re gonna deal with it!',
                        style: TextStyle(
                          color: AppTheme.backgroundColor,
                          fontFamily: 'Outfit',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 2),
    );
  }

  Widget _buildOptionCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuizScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Colors.white),
            const SizedBox(height: 8),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
