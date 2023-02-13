import 'package:flutter/material.dart';
import 'package:namer_app/GUI/Navigation.dart';
import 'package:provider/provider.dart';

import 'GUI/Home/AddWorkout/Workout_day.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WorkoutDayState>(
          create: (_) => WorkoutDayState(),
        ),
      ],
      child: MaterialApp(
        title: 'Wtracking',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          primaryColor: Colors.white,
          //useMaterial3: true,
          //https://docs.flutter.dev/development/ui/material#:~:text=Flutter%20GitHub%20issue.-,How%20to%20use%20Material%203%20in%20your%20Flutter%20app,in%20to%20use%20Material%203.
        ),
        home: HomePage(),
      ),
    );

  }
}

class WorkoutDayState extends ChangeNotifier {

  int workoutCount = 1;
  int uebungsCount = 1;

  void addWorkoutCount(){
    workoutCount++;
  }
  void removeWorkoutCount(){
    if(workoutCount > 1) {
      workoutCount--;
    }
  }

  void addUebungsCount(){
    uebungsCount++;
  }
  void removeUebungsCount(){
    if(uebungsCount > 1) {
      uebungsCount--;
    }
  }

}

