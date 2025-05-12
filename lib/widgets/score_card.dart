import 'package:educational_mobile/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Social Studies',
          style: TextStyle(
            color: AppTheme.backgroundColor,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
        const Text(
          'Exam Preparation',
          style: TextStyle(
            color: AppTheme.backgroundColor,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '58',
                      style: TextStyle(
                        color: AppTheme.backgroundColor,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      ' / 100',
                      style: TextStyle(
                        color: AppTheme.backgroundColor,
                        fontFamily: 'Outfit',

                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Your Recent Score',
                  style: TextStyle(
                    color: AppTheme.backgroundColor,
                    fontFamily: 'Outfit',

                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  const Text(
                    'More Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Outfit',
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
