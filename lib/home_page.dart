import 'dart:async';

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
    ['Code', false, 0, 40],
  ];

  void habitStarted(int index) {
    // Note what the start time is
    var startTime = DateTime.now();

    // Include the time already elapsed
    int elapsedTime = habitList[index][2];

    // Habit started or stopped
    setState(() {
      habitList[index][1] = !habitList[index][1];
    });

    if (habitList[index][1]) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          // Check when the user has stopped the timer
          if (!habitList[index][1]) {
            timer.cancel();
          }

          // Calculate the time elapsed by comparing current time and start time
          var currentTime = DateTime.now();
          habitList[index][2] = elapsedTime +
              currentTime.second -
              startTime.second +
              60 * (currentTime.minute - startTime.minute) +
              3600 * (currentTime.hour - startTime.hour);
        });
      });
    }
  }

  void settingsOpened(int index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text('Settings for ' + habitList[index][0]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Habit Porogress'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: habitList.length,
          itemBuilder: ((context, index) {
            return HabitTile(
                habitName: habitList[index][0],
                onTap: () {
                  habitStarted(index);
                },
                settingsTapped: () {
                  settingsOpened(index);
                },
                timeSpent: habitList[index][2],
                timeGoal: habitList[index][3],
                habitStarted: habitList[index][1]);
          })),
    );
  }
}
