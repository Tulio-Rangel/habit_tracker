import 'package:flutter/material.dart';
import 'package:habit_tracker/utils/habit_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Overall habit summary
  List habitList = [
    // [habitName, habitStarted, timeSpent(sec), timeGoal(min)]
    ['Exercise', false, 0, 15],
    ['Study', false, 0, 60],
    ['Read', false, 0, 30],
    ['Code', false, 0, 40]
  ];
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
            habitName: habitList[0][0],
            onTap: () {},
            settingsTapped: () {},
            timeSpent: habitList[0][2],
            timeGoal: habitList[0][3],
            habitStarted: habitList[0][1],
          ),
          HabitTile(
            habitName: habitList[1][0],
            onTap: () {},
            settingsTapped: () {},
            timeSpent: habitList[1][2],
            timeGoal: habitList[1][3],
            habitStarted: habitList[1][1],
          ),
          HabitTile(
            habitName: habitList[2][0],
            onTap: () {},
            settingsTapped: () {},
            timeSpent: habitList[2][2],
            timeGoal: habitList[2][3],
            habitStarted: habitList[2][1],
          ),
          HabitTile(
            habitName: habitList[3][0],
            onTap: () {},
            settingsTapped: () {},
            timeSpent: habitList[3][2],
            timeGoal: habitList[3][3],
            habitStarted: habitList[3][1],
          ),
        ],
      ),
    );
  }
}
