import 'package:flutter/material.dart';
import 'package:namer_app/GUI/Home/AddWorkout/Workout_day.dart';
import 'package:provider/provider.dart';
import '../../../main.dart';

class Workout extends StatefulWidget {
  const Workout({Key? key}) : super(key: key);

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  int anzahlWorkoutTage = 1;

  @override
  Widget build(BuildContext context) {
    WorkoutDayState workoutDayState = Provider.of<WorkoutDayState>(context);
    return Builder(builder: (context) {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Workout"),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          if (workoutDayState.workoutCount >= 7) {
                            showDialog(
                              context: context,
                              builder: (builder) => AlertDialog(
                                title: const Text("Limit erreicht!"),
                                content: const Text(
                                    "Limit von 7 Tage in der Woche kann nicht überschritten werden!"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        {Navigator.of(builder).pop()},
                                    child: const Text("Verstanden"),
                                  )
                                ],
                              ),
                            );
                          } else {
                            workoutDayState.addWorkoutCount();
                          }
                        },
                        child: const Text('Trainingstag hinzufügen'),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          workoutDayState.removeWorkoutCount();
                        },
                        child: const Text('Trainingstag entfernen'),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: workoutDayState.workoutCount,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return WorkoutDay();
                    }),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child: const Text('Speichern'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ));
    });
  }
}
