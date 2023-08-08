import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HabitTile extends StatelessWidget {
  final String habitName;

  const HabitTile({super.key, required this.habitName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      // Progress Cirlce
                      CircularPercentIndicator(radius: 60),
                      // Play-pause buttom
                      Center(child: Icon(Icons.play_arrow)),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Habit name
                    Text(
                      habitName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),

                    const SizedBox(
                      height: 4,
                    ),

                    // Progress
                    const Text(
                      '2:00 / 10 = 20%',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const Icon(Icons.fitness_center)
          ],
        ),
      ),
    );
  }
}
