import 'package:flutter/material.dart';

import 'custom_card.dart';

class BMIResultPage extends StatelessWidget {
  final String gender;
  final double bmi;
  final int age;
  const BMIResultPage({super.key, required this.gender, required this.bmi, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCard(
                height: 100,
                child: Row(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Gender: ${gender.capitalized}", style: Theme.of(context).textTheme.titleLarge),
                      ),
                    )
                  ],
                )),
            CustomCard(
                height: 100,
                child: Row(
                  mainAxisSize: MainAxisSize.min,


                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("BMI: ${bmi.toStringAsFixed(2)}", style: Theme.of(context).textTheme.titleLarge),
                    )
                  ],
                )),
            CustomCard(
                height: 100,
                child: Row(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Age: $age", style: Theme.of(context).textTheme.titleLarge),
                    )
                  ],
                )),



          ],
        ),
      ),
    );
  }
}

extension on String {
  get capitalized => "${this[0].toUpperCase()}${this.substring(1)}";
}

