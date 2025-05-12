import 'package:educational_mobile/theme/app_theme.dart';
import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildStatCard(
              context,
              icon: Icons.school,
              title: '3/5',
              subtitle: 'topics',
            ),
            const SizedBox(width: 16),
            _buildStatCard(
              context,
              icon: Icons.question_answer,
              title: '8/16',
              subtitle: 'questions',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStatRow('3h 17min', 'Overall Time Spent'),
              const SizedBox(height: 8),
              _buildStatRow('6/20', 'Variants Solved'),
              const SizedBox(height: 8),
              _buildStatRow('28', 'Mistakes Made'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.background),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                color: AppTheme.backgroundColor,
                fontFamily: 'Outfit',

                fontSize: 30,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: AppTheme.backgroundColor,
                fontFamily: 'Outfit',

                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppTheme.backgroundColor,
            fontFamily: 'Outfit',

            fontSize: 30,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: AppTheme.backgroundColor,
            fontFamily: 'Outfit',

            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
