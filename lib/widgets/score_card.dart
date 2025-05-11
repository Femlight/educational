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
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const Text('Exam Preparation'),
        const SizedBox(height: 16),
        Row(
          children: [
            Text('58', style: Theme.of(context).textTheme.headlineLarge),
            Text(' / 100', style: Theme.of(context).textTheme.bodyLarge),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Text('More Details'),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
