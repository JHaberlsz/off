import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);
  static const name = "Weight";

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  TextEditingController textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Theme.of(context).primaryColor,
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: TextField(
                          controller: textcontroller,
                          decoration: InputDecoration(
                              hintText: "Gewicht:",
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  textcontroller.clear();
                                },
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(10, 60),
                        ),
                        onPressed: null,
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
