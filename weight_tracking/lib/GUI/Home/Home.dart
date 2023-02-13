import 'package:flutter/material.dart';
import 'AddWorkout/Workout.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const name = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 10,
              ),
              IconButton(
                onPressed: () => {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Workout())),
                },
                icon: Icon(Icons.add_circle),
              ),
              Card(
                color: Theme.of(context).colorScheme.background,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Workout hinzufügen"),
                ),

              ),
            ],
          ),

          Row(
            children: [
              SizedBox(
                height: 50,
                width: 10,
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.abc),
              ),
              Card(
                color: Theme.of(context).colorScheme.background,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Trainingsfortschritt"),
                ),

              ),
            ],
          ),

          Row(
            children: [
              SizedBox(
                height: 50,
                width: 10,
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.abc),
              ),
              Card(
                color: Theme.of(context).colorScheme.background,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Gewichtsfortschritt"),
                ),

              ),
            ],
          ),

        ],
      ),
    );
  }
  
}



