import 'package:flutter/material.dart';
import 'package:habit_tracker/utils/habit_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Habit Porogress'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          HabitTile(
            habitName: 'Excersise',
            onTap: () {},
            settingsTapped: () {},
            timeSpent: 4,
            timeGoal: 12,
            habitStarted: true,
          ),
          HabitTile(
            habitName: 'Study',
            onTap: () {},
            settingsTapped: () {},
            timeSpent: 4,
            timeGoal: 12,
            habitStarted: true,
          ),
          HabitTile(
            habitName: 'Play Music',
            onTap: () {},
            settingsTapped: () {},
            timeSpent: 4,
            timeGoal: 12,
            habitStarted: true,
          ),
          HabitTile(
            habitName: 'Code',
            onTap: () {},
            settingsTapped: () {},
            timeSpent: 4,
            timeGoal: 12,
            habitStarted: true,
          ),
        ],
      ),
    );
  }
}
