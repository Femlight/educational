import 'package:educational_mobile/widgets/bottom_nav_bar.dart';
import 'package:educational_mobile/widgets/score_card.dart';
import 'package:educational_mobile/widgets/stats_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Hello,'),
                      Text(
                        'Alexandra!',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white24,
                    // Add profile image here
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const ScoreCard(),
              const SizedBox(height: 24),
              const StatsGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
