import 'package:flutter/material.dart';
import 'package:namer_app/GUI/Home/Home.dart';
import 'Weight/Weight.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    var selectedIndex = 0;

    @override
    Widget build(BuildContext context) {

      Widget page;
      switch (selectedIndex) {
        case 0:
          page = Home();
          break;
        case 1:
          page = Placeholder();
          break;
        case 2:
          page = Weight();
          break;
        default:
          throw UnimplementedError('no widget for $selectedIndex');
      }
      var name = Home.name;

      return LayoutBuilder(
          builder: (context, constraints) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("WeightTracking v1 $name"),
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
              body: Row(
                children: [
                  SafeArea(

                    child: NavigationRail(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      extended: constraints.maxWidth >= 600,
                      destinations: [
                        NavigationRailDestination(
                          icon: Icon(Icons.home),
                          label: Text('Home'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.add_circle_outline),
                          label: Text('Training'),
                        ),
                        NavigationRailDestination(
                            icon: Icon(Icons.accessibility_sharp),
                            label: Text("Add Weight")
                        ),
                      ],
                      selectedIndex: selectedIndex,
                      onDestinationSelected: (value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      child: page,
                    ),
                  ),
                ],
              ),
            );
          }
      );
    }
  }

