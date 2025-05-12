import 'package:educational_mobile/theme/app_theme.dart';
import 'package:educational_mobile/widgets/bottom_nav_bar.dart';
import 'package:educational_mobile/widgets/score_card.dart';
import 'package:educational_mobile/widgets/stats_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello,',
                          style: TextStyle(
                            color: AppTheme.backgroundColor,
                            fontFamily: 'Outfit',
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Alexandra!',
                          style: TextStyle(
                            color: AppTheme.backgroundColor,
                            fontFamily: 'Outfit',
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      // Add profile image here
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const ScoreCard(),
                const SizedBox(height: 40),
                const StatsGrid(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
    );
  }
}
