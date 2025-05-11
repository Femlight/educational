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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Practice',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white24,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Challenge your',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'knowledge',
                style: Theme.of(context).textTheme.headlineLarge,
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
                  color: Theme.of(
                    context,
                  ).colorScheme.secondary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mistakes practice',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Practice more the very exam exercises which you\'re doing worse. You\'re gonna deal with it!',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

  Widget _buildOptionCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
